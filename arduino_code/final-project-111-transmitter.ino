/* 
  Transmitter Bluetooth Code
  by: Rachel Yang

  Transmits IMU and button data via the Bluetooth SMiRF Module.
  ___________________________________________________________________________________
  
  MPU9250 Basic Example Code
  by: Kris Winer
  date: April 1, 2014
  license: Beerware - Use this code however you'd like. If you
  find it useful you can buy me a beer some time.
  Modified by Brent Wilkins July 19, 2016
  Demonstrate basic MPU-9250 functionality including parameterizing the register
  addresses, initializing the sensor, getting properly scaled accelerometer,
  gyroscope, and magnetometer data out. Added display functions to allow display
  to on breadboard monitor. Addition of 9 DoF sensor fusion using open source
  Madgwick and Mahony filter algorithms. Sketch runs on the 3.3 V 8 MHz Pro Mini
  and the Teensy 3.1.
  SDA and SCL should have external pull-up resistors (to 3.3V).
  10k resistors are on the EMSENSR-9250 breakout board.
  Hardware setup:
  MPU9250 Breakout --------- Arduino
  VDD ---------------------- 3.3V
  VDDI --------------------- 3.3V
  SDA ----------------------- A4
  SCL ----------------------- A5
  GND ---------------------- GND
  ____________________________________________________________________________________

  Example Bluetooth Serial Passthrough Sketch
  by: Jim Lindblom
  SparkFun Electronics
  date: February 26, 2013
  license: Public domain

  This example sketch converts an RN-42 bluetooth module to
  communicate at 9600 bps (from 115200), and passes any serial
  data between Serial Monitor and bluetooth module.
*/

#include "quaternionFilters.h"
#include "MPU9250.h"

#include <SoftwareSerial.h>

#define SerialDebug true  // Set to true to get Serial output for debugging

//Bluetooth Serial Pins Definitions
int bluetoothTx = 2;  // TX-O pin of bluetooth mate, Arduino D2
int bluetoothRx = 3;  // RX-I pin of bluetooth mate, Arduino D3

//pkts to send out to bluetooth
byte pkt1, pkt2, pkt3, pkt4, pkt5, pkt6, pkt7, pkt8;

//scaled values of accel data
float scaled_accelx, scaled_accely, scaled_accelz;

//absolute values of all IMU data
byte accelx, accely, accelz, gyrox, gyroy, gyroz;

SoftwareSerial bluetooth(bluetoothTx, bluetoothRx);

// Pin definitions
int intPin = 2;  // These can be changed, 2 and 3 are the Arduinos ext int pins (was originally 12 in example)
int myLed  = 13;  // Set up pin 13 led for toggling

int blade_button_pin = 11;  //blade button to D11
int drift_reset_pin = 12;  //drift reset button to D12

int blade_button = 0 ;  //variable for blade button value
int drift_reset = 0;    //variable for drift reset button value

MPU9250 myIMU;

void setup()
{
  Wire.begin();
  // TWBR = 12;  // 400 kbit/sec I2C speed
  Serial.begin(38400);

  bluetooth.begin(115200);  // The Bluetooth Mate defaults to 115200bps
  bluetooth.print("$");  // Print three times individually
  bluetooth.print("$");
  bluetooth.print("$");  // Enter command mode
  delay(100);  // Short delay, wait for the Mate to send back CMD
  bluetooth.println("SM,1");  //set as master
  delay(100);
  bluetooth.println("C,0006668675EF");  //set address for slave
  delay(100);
  bluetooth.println("U,9600,N");  // Temporarily Change the baudrate to 9600, no parity
  // 115200 can be too fast at times for NewSoftSerial to relay the data reliably
  bluetooth.begin(9600);  // Start bluetooth serial at 9600

  // Set up the interrupt pin, its set as active high, push-pull
  pinMode(intPin, INPUT);
  digitalWrite(intPin, LOW);
  pinMode(myLed, OUTPUT);
  digitalWrite(myLed, HIGH);

  // Set up blade and drift reset buttons
  pinMode(blade_button_pin, INPUT);
  pinMode(drift_reset_pin, INPUT);

  // Read the WHO_AM_I register, this is a good test of communication
  byte c = myIMU.readByte(MPU9250_ADDRESS, WHO_AM_I_MPU9250);
  Serial.print("MPU9250 "); Serial.print("I AM "); Serial.print(c, HEX);
  Serial.print(" I should be "); Serial.println(0x71, HEX);

  if (c == 0x71) // WHO_AM_I should always be 0x68
  {
    Serial.println("MPU9250 is online...");

    // Start by performing self test and reporting values
    myIMU.MPU9250SelfTest(myIMU.SelfTest);
    Serial.print("x-axis self test: acceleration trim within : ");
    Serial.print(myIMU.SelfTest[0], 1); Serial.println("% of factory value");
    Serial.print("y-axis self test: acceleration trim within : ");
    Serial.print(myIMU.SelfTest[1], 1); Serial.println("% of factory value");
    Serial.print("z-axis self test: acceleration trim within : ");
    Serial.print(myIMU.SelfTest[2], 1); Serial.println("% of factory value");
    Serial.print("x-axis self test: gyration trim within : ");
    Serial.print(myIMU.SelfTest[3], 1); Serial.println("% of factory value");
    Serial.print("y-axis self test: gyration trim within : ");
    Serial.print(myIMU.SelfTest[4], 1); Serial.println("% of factory value");
    Serial.print("z-axis self test: gyration trim within : ");
    Serial.print(myIMU.SelfTest[5], 1); Serial.println("% of factory value");

    // Calibrate gyro and accelerometers, load biases in bias registers
    myIMU.calibrateMPU9250(myIMU.gyroBias, myIMU.accelBias);

    myIMU.initMPU9250();
    // Initialize device for active mode read of acclerometer, gyroscope, and
    // temperature
    Serial.println("MPU9250 initialized for active data mode....");

    // Read the WHO_AM_I register of the magnetometer, this is a good test of
    // communication
    byte d = myIMU.readByte(AK8963_ADDRESS, WHO_AM_I_AK8963);
    Serial.print("AK8963 "); Serial.print("I AM "); Serial.print(d, HEX);
    Serial.print(" I should be "); Serial.println(0x48, HEX);

    // Get magnetometer calibration from AK8963 ROM
    myIMU.initAK8963(myIMU.magCalibration);
    // Initialize device for active mode read of magnetometer
    Serial.println("AK8963 initialized for active data mode....");
    if (SerialDebug)
    {
      //  Serial.println("Calibration values: ");
      Serial.print("X-Axis sensitivity adjustment value ");
      Serial.println(myIMU.magCalibration[0], 2);
      Serial.print("Y-Axis sensitivity adjustment value ");
      Serial.println(myIMU.magCalibration[1], 2);
      Serial.print("Z-Axis sensitivity adjustment value ");
      Serial.println(myIMU.magCalibration[2], 2);
    }
  } // if (c == 0x71)
  else
  {
    Serial.print("Could not connect to MPU9250: 0x");
    Serial.println(c, HEX);
    while (1) ; // Loop forever if communication doesn't happen
  }
}

void loop()
{
  // If intPin goes high, all data registers have new data
  // On interrupt, check if data ready interrupt
  if (myIMU.readByte(MPU9250_ADDRESS, INT_STATUS) & 0x01)
  {
    myIMU.readAccelData(myIMU.accelCount);  // Read the x/y/z adc values
    myIMU.getAres();

    // Now we'll calculate the accleration value into actual g's
    // This depends on scale being set
    myIMU.ax = (float)myIMU.accelCount[0] * myIMU.aRes; // - accelBias[0];
    myIMU.ay = (float)myIMU.accelCount[1] * myIMU.aRes; // - accelBias[1];
    myIMU.az = (float)myIMU.accelCount[2] * myIMU.aRes; // - accelBias[2];

    myIMU.readGyroData(myIMU.gyroCount);  // Read the x/y/z adc values
    myIMU.getGres();

    // Calculate the gyro value into actual degrees per second
    // This depends on scale being set
    myIMU.gx = (float)myIMU.gyroCount[0] * myIMU.gRes;
    myIMU.gy = (float)myIMU.gyroCount[1] * myIMU.gRes;
    myIMU.gz = (float)myIMU.gyroCount[2] * myIMU.gRes;

    myIMU.readMagData(myIMU.magCount);  // Read the x/y/z adc values
    myIMU.getMres();
    // User environmental x-axis correction in milliGauss, should be
    // automatically calculated
    myIMU.magbias[0] = +470.;
    // User environmental x-axis correction in milliGauss TODO axis??
    myIMU.magbias[1] = +120.;
    // User environmental x-axis correction in milliGauss
    myIMU.magbias[2] = +125.;

    // Calculate the magnetometer values in milliGauss
    // Include factory calibration per data sheet and user environmental
    // corrections
    // Get actual magnetometer value, this depends on scale being set
    myIMU.mx = (float)myIMU.magCount[0] * myIMU.mRes * myIMU.magCalibration[0] -
               myIMU.magbias[0];
    myIMU.my = (float)myIMU.magCount[1] * myIMU.mRes * myIMU.magCalibration[1] -
               myIMU.magbias[1];
    myIMU.mz = (float)myIMU.magCount[2] * myIMU.mRes * myIMU.magCalibration[2] -
               myIMU.magbias[2];
  } // if (readByte(MPU9250_ADDRESS, INT_STATUS) & 0x01)

  // Must be called before updating quaternions!
  myIMU.updateTime();

  // Sensors x (y)-axis of the accelerometer is aligned with the y (x)-axis of
  // the magnetometer; the magnetometer z-axis (+ down) is opposite to z-axis
  // (+ up) of accelerometer and gyro! We have to make some allowance for this
  // orientationmismatch in feeding the output to the quaternion filter. For the
  // MPU-9250, we have chosen a magnetic rotation that keeps the sensor forward
  // along the x-axis just like in the LSM9DS0 sensor. This rotation can be
  // modified to allow any convenient orientation convention. This is ok by
  // aircraft orientation standards! Pass gyro rate as rad/s
  MahonyQuaternionUpdate(myIMU.ax, myIMU.ay, myIMU.az, myIMU.gx * DEG_TO_RAD,
                         myIMU.gy * DEG_TO_RAD, myIMU.gz * DEG_TO_RAD, myIMU.my,
                         myIMU.mx, myIMU.mz, myIMU.deltat);

  //read button data
  blade_button = digitalRead(blade_button_pin);
  drift_reset = digitalRead(drift_reset_pin);

  myIMU.delt_t = millis() - myIMU.count;
  if (myIMU.delt_t > 500)
  {
    if (SerialDebug)
    {
      // Print button data
      Serial.print("blade button: "); Serial.println(blade_button);
      Serial.print("drift reset: ");  Serial.println(drift_reset);

      // Print acceleration values in milligs!
      Serial.print("X-acceleration: "); Serial.print(1000 * myIMU.ax);
      Serial.print(" mg ");
      Serial.print("Y-acceleration: "); Serial.print(1000 * myIMU.ay);
      Serial.print(" mg ");
      Serial.print("Z-acceleration: "); Serial.print(1000 * myIMU.az);
      Serial.println(" mg ");

      // Print gyro values in degree/sec
      Serial.print("X-gyro rate: "); Serial.print(myIMU.gx, 3);
      Serial.print(" degrees/sec ");
      Serial.print("Y-gyro rate: "); Serial.print(myIMU.gy, 3);
      Serial.print(" degrees/sec ");
      Serial.print("Z-gyro rate: "); Serial.print(myIMU.gz, 3);
      Serial.println(" degrees/sec");
    }

    myIMU.count = millis();
    digitalWrite(myLed, !digitalRead(myLed));  // toggle led

  } // if (myIMU.delt_t > 500)
  
  //----------------send out data via bluetooth tx----------------
  //NOTE: myIMU.a- ranges from -2 to +2 and myIMU.g- ranges from -250 to 250

  //calculated scaled accel data to work with 8-bit data form
  scaled_accelx = myIMU.ax * 100;
  scaled_accely = myIMU.ay * 100;
  scaled_accelz = myIMU.az * 100;

  //calculate abs values of all IMU data
  accelx = abs(scaled_accelx);
  accely = abs(scaled_accely);
  accelz = abs(scaled_accelz);
  gyrox = abs(myIMU.gx);
  gyroy = abs(myIMU.gy);
  gyroz = abs(myIMU.gz);

  //construct pkt 1 - first 7 bits of accelx + 1
  pkt1 = ((accelx >> 1) << 1) + 1;
  bluetooth.write(pkt1);

  //construct pkt 2 - first 7 bits of accely + 0
  pkt2 = ((accely >> 1) << 1) + 0;
  bluetooth.write(pkt2);

  //construct pkt 3 - first 7 bits of accelz + 0
  pkt3 = ((accelz >> 1) << 1) + 0;
  bluetooth.write(pkt3);

  //construct pkt 4 - first 7 bits of gyrox + 0
  pkt4 = ((gyrox >> 1) << 1) + 0;
  bluetooth.write(pkt4);

  //construct pkt 5 - first 7 bits of gyroy + 0
  pkt5 = ((gyroy >> 1) << 1) + 0;
  bluetooth.write(pkt5);

  //construct pkt 6 - first 7 bits of gyroz + 0
  pkt6 = ((gyroz >> 1) << 1) + 0;
  bluetooth.write(pkt6);

  //construct pkt 7 - last bit of all IMU data + blade_button + 0
  pkt7 = 0; //reinitialize to 0
  if (accelx % 2 == 1) {
    pkt7 += 128;
  }
  if (accely % 2 == 1) {
    pkt7 += 64;
  }
  if (accelz % 2 == 1) {
    pkt7 += 32;
  }
  if (gyrox % 2 == 1) {
    pkt7 += 16;
  }
  if (gyroy % 2 == 1) {
    pkt7 += 8;
  }
  if (gyroz % 2 == 1) {
    pkt7 += 4;
  }
  if (blade_button == 1) {
    pkt7 += 2;
  }
  bluetooth.write(pkt7);

  //construct pkt 8 - sign of all IMU data + drift_reset + 0
  pkt8 = 0; //reinitialize to 0
  if (scaled_accelx <= -1) {
    pkt8 += 128;
  }
  if (scaled_accely <= -1) {
    pkt8 += 64;
  }
  if (scaled_accelz <= -1) {
    pkt8 += 32;
  }
  if (myIMU.gx <= -1) {
    pkt8 += 16;
  }
  if (myIMU.gy <= -1) {
    pkt8 += 8;
  }
  if (myIMU.gz <= -1) {
    pkt8 += 4;
  }
  if (drift_reset == 1) {
    pkt8 += 2;
  }
  bluetooth.write(pkt8);

}
