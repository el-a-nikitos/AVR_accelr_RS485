import processing.serial.*;

Serial COMport = new Serial(this, "COM8", 9600);

byte Temp, aX_L, aX_H, aY_L, aY_H, aZ_L, aZ_H;
float aX, aY, aZ, aXmid, aYmid, aZmid, alpha = 0.1;
float kx = 1, ky = 1, kz = 9.81/10.8;
boolean recive = false;
int count = 0;

void setup()  {
  
  //WINDOW
  size(800,600);
  background(100);
  frameRate(30);
}

void draw()  {
  
  if (COMport.available()>0)  {
    if ( ( COMport.read() )==51 )  {
      recive = true;
    } else  {
      background(100);
      text("не поймали "+count+" раз",width*0.1,height*0.05*1);
      count++;
    }
  }
  
  if (recive)  {
    if ( (COMport.available()) == 11 )  {
      count = 0;
      
      Temp = byte( COMport.read() );
      int trip01 = COMport.read();
      aX_L = byte( COMport.read() );
      aX_H = byte( COMport.read() );
      int trip02 = COMport.read();
      aY_L = byte( COMport.read() );
      aY_H = byte( COMport.read() );
      int trip03 = COMport.read();
      aZ_L = byte( COMport.read() );
      aZ_H = byte( COMport.read() );
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
      
      aX = float( getFullData(aX_L, aX_H) );
      aX = kx*aX *32*9.81/1024;
      
      
      aY = float( getFullData(aY_L, aY_H) );
      aY = ky*aY *32*9.81/1024;
      
      aZ = float( getFullData(aZ_L, aZ_H) );
      aZ = kz*aZ *32*9.81/1024;
      
      text(aX + " aX",width*0.1,height*0.05*13);
      text(aY + " aY",width*0.1,height*0.05*14);
      text(aZ + " aZ",width*0.1,height*0.05*15);
      
      aXmid = alpha*aX+(1-alpha)*aXmid;
      aYmid = alpha*aY+(1-alpha)*aYmid;
      aZmid = alpha*aZ+(1-alpha)*aZmid;
      
      text(aXmid + " aXmid",width*0.1,height*0.05*16);
      text(aYmid + " aYmid",width*0.1,height*0.05*17);
      text(aZmid + " aZmid",width*0.1,height*0.05*18);
    }
  }
  
    noStroke();
    fill(100);
    rect(width*0.7,0,200,50);    // показать частоту кадров
    fill(0);
    text(round(frameRate)+" кадров/с",width*0.7,height*0.05);
}

int getFullData(int RegL, int RegH)  {
  return  (RegL + RegH*256)/32;
}
