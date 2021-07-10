#include <Arduino.h>
#include <Wire.h>
#include <Adafruit_ADS1X15.h>
#include <Adafruit_I2CDevice.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <WiFi.h>
#include <PubSubClient.h>

/***************************************************************
 ******************* CONFIGURACION WIFI ************************
 ***************************************************************/
const char* ssid = "TU SSID";
const char* password = "TU PASSWORD";
WiFiClient espClient;


/***************************************************************
 ******************* CONFIGURACION MQTT ************************
 ***************************************************************/
const char* mqttServer = "LA IP DE TU SERVIDOR";
const int mqttPort = 1883;
const char* mqttUser = "TU USUARIO MQTT";
const char* mqttpassword = "TU PASSWORD MQTT";

PubSubClient MQTTclient(espClient);


/***************************************************************
 ******************* CONFIGURACION DISPLAY *********************
 ***************************************************************/
#define ANCHO_PANTALLA 128 // ancho pantalla OLED
#define ALTO_PANTALLA 64 // alto pantalla OLED
 
Adafruit_SSD1306 display(ANCHO_PANTALLA, ALTO_PANTALLA, &Wire, -1); // Objeto de la clase Adafruit_SSD1306


TaskHandle_t Task_comunciaciones;

Adafruit_ADS1115 ads1115;	// Construimos el objeto ads1115
 

int16_t  adc_Voltaje = 0; // Variable donde almacenaremos el valor de lectura del ADC correspondiente a tension
int16_t  adc_Amperios = 0; // Variable donde almacenaremos el valor de lectura del ADC correspondiente a coriente

int Vpp, App;       // Valores de tensión y corriente pico a pico
int Vmax = 0;       // Tensión máxima de la onda
int Vmin = 9999;    // Tensión mínima de la onda
int Amax = 0;       // Corriente máxima de la onda
int Amin = 9999;    // Corriente mínima de la onda

float Amperios;
float Voltaje;
const float FACTOR_CONVERSION_AMP = 30.0/65535;       // Pinza amperimetrica CTSensor 30A / Resolución ADC
const float FACTOR_CONVERSION_VOL =  230.0/(65535/2); // Voltaje / Resolución ADC

// Valor de offset de Tensión
const float OFFSET_V = -27.0;
// Valores de offset a lo largo de todo el rango del sesor CT para mayor precisión
const float OFFSET_A_0_1 = 0.0;
const float OFFSET_A_1_5 = 0.2;
const float OFFSET_A_5_10 = 0.45;
const float OFFSET_A_10_15 = 0.70;
const float OFFSET_A_15_20 = 0.50;
const float OFFSET_A_20_25 = 1.0;
const float OFFSET_A_25_30 = 1.2;


long tiempoInicioRefrescoDisplay = 0;
long tiempoInicioSampleo = 0;
long tiempoSampleo = 0;
long tiempoRefrescoDisplay = 0;

void procesarDatos(void);
void MostrarDatos(void);
void ConectarWifi(void);
void ConectarMQTT(void);



// Tarea utilizada para enviar los datos desde el CORE 0
void loop_comunciaciones(void *parameter){

  while(1){

    Serial.print("Power: ");
    Serial.print(Amperios*Voltaje, 2);
    Serial.print("W - Volt: ");
    Serial.print(Voltaje, 1);
    Serial.print("V - Amp: ");
    Serial.print(Amperios, 3);
    Serial.println("A");

    if((WiFi.status() == WL_CONNECTED)){

      if(MQTTclient.connected()){

        //TOPIC:  HOME/ConsumoElectrico/Voltage
        //        HOME/ConsumoElectrico/Amperios
        //        HOME/ConsumoElectrico/Potencia
        char valor[10];
        dtostrf(Voltaje, 3, 1, valor);
        MQTTclient.publish("HOME/ConsumoElectrico/Voltage", valor);
        dtostrf(Amperios, 3, 2, valor);
        MQTTclient.publish("HOME/ConsumoElectrico/Amperios", valor);
        dtostrf(Amperios*Voltaje, 3, 1, valor);
        MQTTclient.publish("HOME/ConsumoElectrico/Potencia", valor);

      }
      else{
        Serial.println("Se ha perdido conexión con el Servidor MQTT");
        ConectarMQTT();
      }

    }
    else{
      Serial.println("Se ha perdido conexión WIFI");
      ConectarWifi();
      ConectarMQTT();
    }

    
    vTaskDelay(1000);

  }
  
}


void setup() {

  Serial.begin(9600);             // Inicializamos comunicación por el puerto serie

  ConectarWifi();
  ConectarMQTT();

  ads1115.setGain(GAIN_FOUR);     // 4x gain   +/- 1.024V  1 bit = 0.5mV
  ads1115.begin(0x48);            // Inicializamos el ads1115 con la dirección 0x48

  display.begin(SSD1306_SWITCHCAPVCC, 0x3C); // Inicializamos display con dirección 0x3C

  tiempoInicioSampleo = micros();             // Inicializamos tiempo de sampleo
  tiempoInicioRefrescoDisplay = millis();     // Inicializamos tiempo de refresco del display

  xTaskCreatePinnedToCore(loop_comunciaciones, "TaskComunicaciones", 100000, NULL, 2, &Task_comunciaciones, 0); // Creamos una tarea para enviar datos desde el CORE 0 del ESP32

}


void loop() {

// En este loop controlamos los componentes que van por I2C, ya que en el ESP32 no se puede utilizar el I2C desde diferentes tareas.
// Por tanto decidimos usar este loop para gestionar desde aquí los componentes que se manejan desde el I2C. 
// Este Loop se gestiona desde el CORE 1, El CORE 0 queda reservado para el loop de comunicaciones.

    tiempoSampleo = micros();           // Actualizamos tiempo de sampleo
    tiempoRefrescoDisplay = millis();   // Actualizamos tiempo de refresco del display
    
    if(tiempoSampleo >= (tiempoInicioSampleo + 500)){ // Cada medio milisegundo (500 microsegundos) cogemos un dato del ADS1155
      
      // muestrea la señal
      adc_Amperios = ads1115.readADC_Differential_0_1(); // Leemos Amperios
      adc_Voltaje = ads1115.readADC_Differential_2_3(); // Leemos Tensión
      
      // Buscamos el máximo y mínimo de cada señal para saber el valor Ap Vp
      if(Amax<adc_Amperios) Amax = adc_Amperios;  
      if(Amin>adc_Amperios) Amin = adc_Amperios;
      if(Vmax<adc_Voltaje) Vmax = adc_Voltaje;
      if(Vmin>adc_Voltaje) Vmin = adc_Voltaje;

      Vpp = Vmax - Vmin; // Tensión pico a pico
      App = Amax - Amin; // Corriente pico a pico

      tiempoInicioSampleo = micros(); // Inicializamos tiempo se sampleo

    }
    
    if(tiempoRefrescoDisplay >= (tiempoInicioRefrescoDisplay + 1000)){  // Cada segundo (1000 milisegundos) se refresca el display
    
      procesarDatos();  // Precesamos los datos de Vp y Ap para sacar los valores correctos
      MostrarDatos();   // Mostramos los resultados en el display

      tiempoInicioRefrescoDisplay = millis(); // Inicializamos el tiempo de refresco del display

    }
    

}

void procesarDatos(){
  // trata los datos 
    Voltaje = Vpp * FACTOR_CONVERSION_VOL + OFFSET_V;  if(Voltaje < 0.002) Voltaje = 0.0;
    Amperios = App * FACTOR_CONVERSION_AMP ;  

    // Ajsutamos los amperios en varios tramos de todo el rango de medida
    if(Amperios < 0.005){
      Amperios = 0.0;
    }
    else if(0.005 < Amperios && Amperios <= 1.0){
      Amperios = Amperios - OFFSET_A_0_1;
    }
    else if(1.0 < Amperios && Amperios <= 5.0){
      Amperios = Amperios - OFFSET_A_1_5;
    }
    else if(5.0 < Amperios && Amperios <= 10.0){
      Amperios = Amperios - OFFSET_A_5_10;
    }
    else if(10.0 < Amperios && Amperios <= 15.0){
      Amperios = Amperios - OFFSET_A_10_15;
    }
    else if(15.0 < Amperios && Amperios <= 20.0){
      Amperios = Amperios - OFFSET_A_15_20;
    }
    else if(20.0 < Amperios && Amperios <= 25.0){
      Amperios = Amperios - OFFSET_A_20_25;
    }
    else if(25.0 < Amperios && Amperios <= 30.0){
      Amperios = Amperios - OFFSET_A_25_30;
    }

    // Inicializamos valores de maximos y minimos
    Vmax = 0;
    Vmin = 9999;
    Amax = 0;
    Amin = 9999;

}

void MostrarDatos(){

  display.clearDisplay();
  display.setTextSize(2);               // Tamaño del texto
  display.setTextColor(SSD1306_WHITE);  // Color del texto
  display.setCursor(5, 5);              // Posición del texto
  display.print("V: ");                 // Escribir texto  
  display.print(Voltaje,1);             // Escribir texto
  display.setCursor(5, 25);             // Posición del texto
  display.print("A: ");                 // Escribir texto  
  display.print(Amperios, 2);            // Escribir texto
  display.setCursor(5, 45);             // Posición del texto
  display.print("VA:");                 // Escribir texto  
  display.print(Amperios*Voltaje, 1);   // Escribir texto
  display.display();                    // Enviar a pantalla  
      
}

void ConectarWifi(){

  WiFi.begin(ssid,password);

  Serial.print("Conectando a red Wfi");

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }

  Serial.println("Conectando a Red WIFI!!");


}

void ConectarMQTT(){

  MQTTclient.setServer(mqttServer, mqttPort);

  while (!MQTTclient.connected())
  {
    if(WiFi.status() != WL_CONNECTED){
      ConectarWifi();
    }
    else{
      Serial.println("Conectando a Broquer MQTT...");
      if(MQTTclient.connect("EnergyMeter", mqttUser, mqttpassword)){
        Serial.println("Conectado!");
      }
      else {
        Serial.print("Conexión fallida ");
        Serial.print(MQTTclient.state());
        delay(2000);
      } 
    }
  }
  

}