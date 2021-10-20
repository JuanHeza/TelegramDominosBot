#include <ESP8266WiFi.h>
#include <Adafruit_NeoPixel.h>


const int LedPar   = 5;
const int LedNon   = 4;
const int IRsensA  = 14;
//const int IRsensB  = 12;
const int Luces    = 13;
int NUMPIXELS = 4;    // Number of Pixels on the Ring
int BRIGHTNESS = 20;    // Brightness between 0 - 255
int estado         = HIGH;
int retraso        = 10;
const char *ssid = "InterCable3099442";
const char *pass = "mc8fb267a9766";
Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, Luces, NEO_GRB + NEO_KHZ800);
WiFiClient Client;
 
void setup() {
  Serial.begin(9600);
  pinMode(LedPar, OUTPUT);
  pinMode(LedNon, OUTPUT);
  pinMode(IRsensA,INPUT);
  pinMode(Luces, OUTPUT);
//  pinMode(IRsensB,INPUT);
  WiFi.begin(ssid,pass);
  while(WiFi.status() != WL_CONNECTED){
    delay(retraso);
    Serial.print(".");
  }
  Serial.println();
  Serial.println("Connected");
  pixels.begin();
  pixels.show();
  
  pixels.setBrightness(BRIGHTNESS);
}

void loop() {
  digitalWrite(LedPar,estado);
  digitalWrite(LedNon,estado);
  IR();
  pixels.setPixelColor(0, pixels.Color(25,215,152));
  pixels.setPixelColor(1, pixels.Color(125,15,152));
  pixels.setPixelColor(2, pixels.Color(125,215,52));
  pixels.setPixelColor(3, pixels.Color(25,15,52));
  pixels.show();
  delay(retraso); 
}

void Telegram(){
  
}

void IR(){
  int entrada = digitalRead(IRsensA);
   if (entrada == LOW)
  {
    estado = !estado;
    digitalWrite(Luces, estado);
    digitalWrite(LedPar, estado);
    digitalWrite(LedNon, estado);
  }
}
