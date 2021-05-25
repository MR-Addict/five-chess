import ddf.minim.*;//背景音乐
PImage img; // 背景图片
Minim minim;
AudioPlayer BGM1;
AudioPlayer BGM2;
AudioPlayer BGM3;
AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;
boolean ismusic;
int state1=1, state2=2, musicCount=0, count=0;
int posi=0, posi_=0, posj=0, posj_=0, light=150;
int[][] pos=new int[15][15];
color white=color(255);
color black=color(0);
color grey=color(204);
color brown=color(227, 168, 105);
float theta, step; 
Layer[] layers = new Layer[8]; 

class Layer 
{ 
  float start, noize, speed; 
  float yOff, yOff2; 
  Layer(float _start, float _noize, float _speed) 
  { 
    start = _start; 
    noize = _noize; 
    speed = _speed;
  }
  void display() 
  { 
    yOff = yOff2; 
    noStroke(); 
    for (int x=0; x<width; x+=1) 
    { 
      float y = start + noise(noize+sin(yOff)*3)*step*3.5;
      rect(x, height, 1, -height+y); 
      yOff+=TWO_PI/(width);
    } 
    yOff2=theta*speed;
  }
} 
