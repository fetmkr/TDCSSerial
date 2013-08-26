// Example by Tom Igoe

import processing.serial.*;

Serial myPort;  // The serial port
    int lf = 47; //'/'
    // Expand array size to the number of bytes you expect:
    byte[] inBuffer = new byte[6];

void setup() {
  // List all the available serial ports:
  println(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[1], 115200);
  //myPort.write(65);
  myPort.readBytesUntil(lf, inBuffer);
}

void draw() {
//  while (myPort.available() > 0) {
//
//    
//    if (inBuffer != null) {
//     
//    }
//  }
}

void serialEvent(Serial p) { 
  p.readBytesUntil(lf, inBuffer); 
   String start = str(char(inBuffer[0]));
   

      int current = int(inBuffer[1]) * 256 + int(inBuffer[2]);
      String cur = str(current);
      
      
      int voltage = int(inBuffer[3]) * 256 + int(inBuffer[4]);
      String vol = str(voltage);
      
      String end = str(char(inBuffer[5]));
      
      print(start);
      print(" Current:");
      print(cur);
      print(" Voltage:");
      print(vol);
      println(" "+ end);

} 
