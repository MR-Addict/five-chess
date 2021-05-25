void setup()
{
  minim = new Minim(this);
  BGM1 = minim.loadFile("背景音乐1.mp3", 1024);
  BGM2 = minim.loadFile("背景音乐2.mp3", 1024);
  BGM3 = minim.loadFile("背景音乐3.mp3", 1024);
  player1 = minim.loadFile("落子音效.mp3", 1024);
  player2 = minim.loadFile("获胜音效.mp3", 1024);
  player3 = minim.loadFile("失败音效.mp3", 1024);
  BGM1.loop();
  img = loadImage("picture.jpg");
  size(950, 900);
  background(grey);
  PFont myfont=createFont("宋体", 50);
  textFont(myfont);
  for (int i=0; i<15; i++)
    for (int j=0; j<15; j++)
      pos[i][j]=0;
  step = (height-120)/8; 
  for (int i=0; i<8; i++) 
  { 
    layers[i] = new Layer(-20+i*step, random(1000), i/3.0);
  }
}

void draw()
{
  if (state1==0)
  {
    printWin();//打印棋盘
    if (state2==0)doubleMode();//互动模式
    else if (state2==1)singleMode();//人机模式
  } else if (state1==1)printMenu();//打印菜单
  else if (state1==2)movingHill();//退出状态，绘制移动的山峰
  else if (state1==3)help();//帮助界面
  //显示最近落子的状态
  noStroke();
  if (count>0&&count%2==0&&posi!=0)
  {
    fill(black);
    ellipse(40+(posi+1)*50, 60+(posj+1)*50, 15, 15);
  } else if (count>0&&count%2==1&&posi!=0)
  {
    fill(white);
    ellipse(40+(posi+1)*50, 60+(posj+1)*50, 15, 15);
  }
}
