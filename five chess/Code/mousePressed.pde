//鼠标事件
void mousePressed()
{
  //返回
  if (mouseX<=940&&mouseX>=860&&mouseY<=860&&mouseY>=760)
  {
    loop();
    for (int i=0; i<15; i++)
      for (int j=0; j<15; j++)
        pos[i][j]=0;
    posi=posj=0;
    state1=1;
    state2=2;
    count=0;
  }
  //重新开始
  else if (mouseX<=940&&mouseX>=860&&mouseY<=560&&mouseY>=460)
  {
    loop();
    for (int i=0; i<15; i++)
      for (int j=0; j<15; j++)
        pos[i][j]=0;
    posi=posj=0;
    count=0;
  }
  //悔棋
  else if (mouseX<=940&&mouseX>=860&&mouseY<=710&&mouseY>=610&&count>=2)
  {
    loop();
    pos[posi_][posj_]=0;
    pos[posi][posj]=0;
    posi_=posi=0;
    posj_=posj=0;
    count-=2;
  }
}
