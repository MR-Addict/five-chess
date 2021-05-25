//帮助界面
void help()
{
  stroke(0);
  strokeWeight(5);
  image(img, 0, 0, 950, 900);
  fill(grey, light);
  rect(30, 50, 820, 820);
  rect(40, 60, 800, 800);
  fill(black);
  textSize(60);
  textAlign(CENTER);
  text("游戏说明", 440, 210);
  textSize(30);
  textAlign(LEFT);
  text("棋局右上方记录着双方的步数", 90, 310);
  text("游戏时钟是记录当前棋局时长，一周为15秒", 90, 360);
  text("悔棋一定是退回两步棋子，因为要考虑到人机对战", 90, 410);
  text("字母键M播放音乐，N播放下一首", 90, 460);
  text("由于本人能力有限，程序中仍有一些bug，还请大佬指教", 90, 560);
  if (mousePressed==true&&(mouseX<=730||mouseY<=800))state1=1;
}
