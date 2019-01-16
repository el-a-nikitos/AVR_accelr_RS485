import processing.serial.*;

Serial COMport = new Serial(this, "COM7", 9600);

int Temp, aX_L, aX_H, aY_L, aY_H, aZ_L, aZ_H;
float aX, aY, aZ;
boolean recive = false;

void setup()  {
  
  //WINDOW
  size(800,600);
  background(100);
  frameRate(15);
}

void draw()  {
  
  if (COMport.available()>0)  {
    if ( ( COMport.read() )==51 )  {
      recive = true;
    }
  }
  
  if (recive)  {
    if ( (COMport.available()) == 11 )  {
      Temp = COMport.read();
      int trip01 = COMport.read();
      aX_L = COMport.read();
      aX_H = COMport.read();
      int trip02 = COMport.read();
      aY_L = COMport.read();
      aY_H = COMport.read();
      int trip03 = COMport.read();
      aZ_L = COMport.read();
      aZ_H = COMport.read();
      int trip04 = COMport.read();
      
      background(100);
      text(Temp + " температура",width*0.1,height*0.05*1);
      text(trip01 + " <-100",width*0.1,height*0.05*2);
      text(aX_L + " aX_L",width*0.1,height*0.05*3);
      text(aX_H + " aX_H",width*0.1,height*0.05*4);
      text(trip02 + " <-101",width*0.1,height*0.05*5);
      text(aY_L + " aY_L",width*0.1,height*0.05*6);
      text(aY_H + " aY_H",width*0.1,height*0.05*7);
      text(trip03 + " <-102",width*0.1,height*0.05*8);
      text(aZ_L + " aZ_L",width*0.1,height*0.05*9);
      text(aZ_H + " aZ_H",width*0.1,height*0.05*10);
      text(trip04 + " <-52",width*0.1,height*0.05*11);
      
      recive = false;
      
      aX = float( (aX_L + aX_H)/32 );
      aX = aX *32*9.81/1024;
      text(aX + " aX",width*0.1,height*0.05*13);
      
      aY = float( (aY_L + aY_H)/32 );
      aY = aY *32*9.81/1024;
      text(aY + " aY",width*0.1,height*0.05*14);
      
      aZ = float( (aZ_L + aZ_H)/32 );
      aZ = aZ *32*9.81/1024;
      text(aZ + " aZ",width*0.1,height*0.05*15);
    }
  }
  
  
  
    noStroke();
    fill(100);
    rect(width*0.7,0,200,50);    // показать частоту кадров
    fill(0);
    text(round(frameRate)+" кадров/с",width*0.7,height*0.05);
}

void mousePressed()  {
  //RANGES

}
