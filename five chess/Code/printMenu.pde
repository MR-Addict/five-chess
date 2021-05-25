//菜单界面
void printMenu()
{
  stroke(0);
  strokeWeight(5);
  image(img, 0, 0, 950, 900);
  noFill();
  rect(30, 50, 820, 820);
  rect(40, 60, 800, 800);
  textSize(60);
  textAlign(CENTER);
  fill(black);
  text("五子棋", 440, 160);
  text("请选择游戏模式:", 440, 260);
  strokeWeight(2);
  //人机
  fill(grey, light);
  rect(190, 310, 200, 100);
  rect(195, 315, 190, 90);
  //互动
  rect(490, 310, 200, 100);
  rect(495, 315, 190, 90);
  //退出游戏
  rect(190, 510, 500, 100);
  rect(195, 515, 490, 90);
  rect(740, 810, 70, 40);
  fill(black);
  text("人机", 290, 380);
  text("互动", 590, 380);
  text("退出游戏", 440, 580);
  textSize(30);
  text("帮助", 740, 810, 70, 40);
  if (mouseX<=390&&mouseX>=190&&mouseY<=410&&mouseY>=310)cursor(HAND);
  else if (mouseX<=690&&mouseX>=490&&mouseY<=410&&mouseY>=310)cursor(HAND);
  else if (mouseX<=690&&mouseX>=190&&mouseY<=610&&mouseY>=510)cursor(HAND);
  else if (mouseX<=810&&mouseX>=740&&mouseY<=850&&mouseY>=810)cursor(HAND);
  else cursor(ARROW);
  if (mousePressed==true)
  {
    //人机
    if (mouseX>=190&&mouseX<=390&&mouseY>=310&&mouseY<=410)
    {
      state1=0;
      state2=1;
      count=0;
    } 
    //互动
    else if (mouseX>=490&&mouseX<=690&&mouseY>=310&&mouseY<=410)
    {
      state2=0;
      state1=0;
      count=0;
    } 
    //退出
    else if (mouseX>=190&&mouseX<=690&&mouseY>=510&&mouseY<=610)
    {
      state1=2;
    } else if (mouseX<=810&&mouseX>=740&&mouseY<=850&&mouseY>=810)state1=3;
  }
}
