//键盘事件
void keyPressed()
{
  if (key=='m'||key=='M') {
    ismusic=!ismusic;
    //播放/暂停音乐
    if (ismusic) {
      if (musicCount%3==0) 
        BGM1.pause();
      else if (musicCount%3==1) 
        BGM2.pause();
      else if (musicCount%3==2)
        BGM3.pause();
    } else {
      if (musicCount%3==0) 
        BGM1.loop();
      else if (musicCount%3==1) 
        BGM2.loop();
      else if (musicCount%3==2) 
        BGM3.loop();
    }
  } else if (key=='n'||key=='N') {
    musicCount++;
    //换音乐
    if (musicCount%3==0) {
      BGM1.loop();
      BGM1.rewind();
      BGM2.pause();
      BGM3.pause();
    } else if (musicCount%3==1) {
      BGM2.loop();
      BGM2.rewind();
      BGM1.pause();
      BGM3.pause();
    } else if (musicCount%3==2) {
      BGM3.loop();
      BGM3.rewind();
      BGM1.pause();
      BGM2.pause();
    }
  }
}
