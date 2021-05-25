//游戏界面
void printWin()
{
  strokeWeight(5);
  background(white);
  fill(black);
  textSize(30);
  text("当前状态：", 100, 38);
  //绘制棋子状态
  noStroke();
  if (count%2==0) {
    fill(black);
    ellipse(190, 25, 40, 40);
  } else {
    fill(white);
    ellipse(190, 25, 40, 40);
  }
  stroke(0);
  fill(brown);
  rect(30, 50, 820, 820);
  rect(40, 60, 800, 800);
  fill(grey);
  strokeWeight(3);
  //返回
  rect(860, 760, 80, 100, light);
  //悔棋
  rect(860, 610, 80, 100, light);
  //重新开始
  rect(860, 460, 80, 100, light);
  //绘制时钟
  ellipse(900, 380, 80, 80);
  line(900, 380, 900+35*sin(frameCount*PI/2700), 380-35*cos(frameCount*PI/2700));
  for (int i=1; i<16; i++)
    line(40+50*i, 60, 40+50*i, 860);
  for (int i=1; i<16; i++)
    line(40, 60+50*i, 840, 60+50*i);
  if (mouseX<=940&&mouseX>=860&&mouseY<=860&&mouseY>=760)cursor(HAND);
  else if (mouseX<=940&&mouseX>=860&&mouseY<=710&&mouseY>=610)cursor(HAND);
  else if (mouseX<=940&&mouseX>=860&&mouseY<=560&&mouseY>=460)cursor(HAND);
  else cursor(ARROW);
  //中间
  line(435, 440, 435, 455);
  line(420, 455, 435, 455);
  line(445, 440, 445, 455);
  line(460, 455, 445, 455);
  line(435, 480, 435, 465);
  line(420, 465, 435, 465);
  line(445, 480, 445, 465);
  line(460, 465, 445, 465);
  //左上角
  line(135, 140, 135, 155);
  line(120, 155, 135, 155);
  line(145, 140, 145, 155);
  line(160, 155, 145, 155);
  line(135, 180, 135, 165);
  line(120, 165, 135, 165);
  line(145, 180, 145, 165);
  line(160, 165, 145, 165);
  //右下角
  line(735, 740, 735, 755);
  line(720, 755, 735, 755);
  line(745, 740, 745, 755);
  line(760, 755, 745, 755);
  line(735, 780, 735, 765);
  line(720, 765, 735, 765);
  line(745, 780, 745, 765);
  line(760, 765, 745, 765);
  //左下角
  line(135, 740, 135, 755);
  line(120, 755, 135, 755);
  line(145, 740, 145, 755);
  line(160, 755, 145, 755);
  line(135, 780, 135, 765);
  line(120, 765, 135, 765);
  line(145, 780, 145, 765);
  line(160, 765, 145, 765);
  //右上角
  line(735, 140, 735, 155);
  line(720, 155, 735, 155);
  line(745, 140, 745, 155);
  line(760, 155, 745, 155);
  line(735, 180, 735, 165);
  line(720, 165, 735, 165);
  line(745, 180, 745, 165);
  line(760, 165, 745, 165);
  textSize(40);
  textAlign(CENTER);
  fill(black);
  text("五子棋", 440, 42);
  text("悔", 860, 610, 80, 50);
  text("棋", 860, 660, 80, 50);
  text("返", 860, 760, 80, 50);
  text("回", 860, 810, 80, 50);
  textSize(30);
  text("重新开始", 860, 470, 80, 100);
}
