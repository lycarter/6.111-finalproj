/* 
  Receiver Bluetooth Code
  by: Rachel Yang

  Configures bluetooth module as slave and relays all received
  data to the Serial Monitor.
  ______________________________________________________________
  
  Example Bluetooth Serial Passthrough Sketch
  by: Jim Lindblom
  SparkFun Electronics
  date: February 26, 2013
  license: Public domain

  This example sketch converts an RN-42 bluetooth module to
  communicate at 9600 bps (from 115200), and passes any serial
  data between Serial Monitor and bluetooth module.
*/

#include <SoftwareSerial.h>

//Bluetooth Serial Pins Definitions
int bluetoothTx = 2;  // TX-O pin of bluetooth mate, Arduino D2
int bluetoothRx = 3;  // RX-I pin of bluetooth mate, Arduino D3

//NOTE: connect user4[30] to pin 2

SoftwareSerial bluetooth(bluetoothTx, bluetoothRx);

// Pin definitions
int myLed  = 13;  // Set up pin 13 led for toggling

void setup()
{
  // TWBR = 12;  // 400 kbit/sec I2C speed
  Serial.begin(38400);

  bluetooth.begin(115200);  // The Bluetooth Mate defaults to 115200bps
  bluetooth.print("$");  // Print three times individually
  bluetooth.print("$");
  bluetooth.print("$");  // Enter command mode
  delay(100);  // Short delay, wait for the Mate to send back CMD
  bluetooth.println("SM,0");  //set as slave
  delay(100);
  bluetooth.println("U,9600,N");  // Temporarily Change the baudrate to 9600, no parity
  // 115200 can be too fast at times for NewSoftSerial to relay the data reliably
  bluetooth.begin(9600);  // Start bluetooth serial at 9600

  //set up LED to turn on
  pinMode(myLed, OUTPUT);
  digitalWrite(myLed, HIGH);
}

void loop()
{
  //NOTE: myIMU.a- ranges from -2 to +2 and myIMU.g- ranges from -250 to 250

  //if bluetooth receives anything, print it to serial monitor
  if (bluetooth.available()){
    Serial.println(bluetooth.read());
  }
  
  //-------------------bluetooth stuff----------------------------


  //  if(bluetooth.available())  // If the bluetooth sent any characters
  //  {
  //    // Send any characters the bluetooth prints to the serial monitor
  //    Serial.print((char)bluetooth.read());
  //  }
  //  if(Serial.available())  // If stuff was typed in the serial monitor
  //  {
  //    // Send any characters the Serial monitor prints to the bluetooth
  //    bluetooth.print((char)Serial.read());
  //  }
}
