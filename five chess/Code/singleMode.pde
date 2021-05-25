//人机模式
void singleMode()
{
  //打印状态
  textSize(25);
  fill(black);
  text("电脑:"+count/2+"步", 860, 110, 80, 60);
  text("玩家:"+(count+1)/2+"步", 860, 50, 80, 60);
  //绘制棋局
  for (int i=0; i<15; i++)
    for (int j=0; j<15; j++)
    {
      if (pos[i][j]==1)
      {
        fill(black);
        ellipse(90+50*i, 110+50*j, 42, 42);
      } else 
      if (pos[i][j]==2)
      {
        fill(white);
        ellipse(90+50*i, 110+50*j, 42, 42);
      }
    }
  //判断胜负
  for (int i=0; i<15; i++)
    for (int j=0; j<15; j++)
    {
      if (pos[i][j]==1)
      {
        for (int c=-1; c<=1; c++)
          for (int d=-1; d<=1; d++)
            if (!(c==0&&d==0))
            {
              int  num=0;
              for (int k=1; k<=4; k++)
              {
                if (i+c*k<15&&i+c*k>=0&&j+d*k<15&&j+d*k>=0)
                  if (pos[i+c*k][j+d*k]==1)num++;
                  else break;
                if (num==4)
                {
                  player2.play();
                  player2.rewind();
                  textSize(30);
                  text("大战了"+(count%2+count)/2+"回合", 690, 38);
                  fill(grey, light);
                  rect(870, 180, 60, 125);
                  fill(black);
                  text("玩", 860, 180, 80, 40);
                  text("家", 860, 210, 80, 40);
                  text("获", 860, 240, 80, 40);
                  text("胜", 860, 270, 80, 40);
                  noLoop();
                }
              }
            }
      } 
      if (pos[i][j]==2)
      {
        for (int a=-1; a<=1; a++)
          for (int b=-1; b<=1; b++)
            if (!(a==0&&b==0))
            {
              int num=0;
              for (int k=1; k<=4; k++)
                if (i+a*k<15&&i+a*k>=0&&j+b*k<15&&j+b*k>=0)
                  if (pos[i+a*k][j+b*k]==2) num++;
                  else break;
              if (num==4)
              {
                player3.play();
                player3.rewind();
                textSize(30);
                text("大战了"+(count%2+count)/2+"回合", 690, 38);
                fill(grey, light);
                rect(870, 180, 60, 125);
                fill(black);
                text("电", 860, 180, 80, 40);
                text("脑", 860, 210, 80, 40);
                text("获", 860, 240, 80, 40);
                text("胜", 860, 270, 80, 40);
                noLoop();
              }
            }
      }
    }
  if (mousePressed==true)
  {
    for (int p=0; p<15; p++)
      for (int q=0; q<15; q++)
        if (mouseX>=67+50*p&&mouseX<=113+50*p&&mouseY>=87+50*q&&mouseY<=133+50*q)
        {
          if (pos[p][q]==1||pos[p][q]==2)continue;
          else
          {
            //玩家走棋
            player1.play();
            player1.rewind();
            posi_=posi;
            posi=p;
            posj_=posj;
            posj=q;
            pos[p][q]=1;
            count++;
            //绘制棋局
            for (int i=0; i<15; i++)
              for (int j=0; j<15; j++)
              {
                if (pos[i][j]==1)
                {
                  fill(black);
                  ellipse(90+50*i, 110+50*j, 42, 42);
                } else 
                if (pos[i][j]==2)
                {
                  fill(white);
                  ellipse(90+50*i, 110+50*j, 42, 42);
                }
              }
            //判断胜负
            for (int i=0; i<15; i++)
              for (int j=0; j<15; j++)
              {
                if (pos[i][j]==1)
                {
                  for (int c=-1; c<=1; c++)
                    for (int d=-1; d<=1; d++)
                      if (!(c==0&&d==0))
                      {
                        int  num=0;
                        for (int k=1; k<=4; k++)
                        {
                          if (i+c*k<15&&i+c*k>=0&&j+d*k<15&&j+d*k>=0)
                            if (pos[i+c*k][j+d*k]==1)num++;
                            else break;
                          if (num==4)
                          {
                            player2.play();
                            player2.rewind();
                            textSize(30);
                            text("大战了"+(count%2+count)/2+"回合", 690, 38);
                            fill(grey, light);
                            rect(870, 180, 60, 125);
                            fill(black);
                            text("玩", 860, 180, 80, 40);
                            text("家", 860, 210, 80, 40);
                            text("获", 860, 240, 80, 40);
                            text("胜", 860, 270, 80, 40);
                            noLoop();
                          }
                        }
                      }
                }
                if (pos[i][j]==2)
                {
                  for (int a=-1; a<=1; a++)
                    for (int b=-1; b<=1; b++)
                      if (!(a==0&&b==0))
                      {
                        int num=0;
                        for (int k=1; k<=4; k++)
                          if (i+a*k<15&&i+a*k>=0&&j+b*k<15&&j+b*k>=0)
                            if (pos[i+a*k][j+b*k]==2) num++;
                            else break;
                        if (num==4)
                        {
                          player3.play();
                          player3.rewind();
                          textSize(30);
                          text("大战了"+(count%2+count)/2+"回合", 690, 38);
                          fill(grey, light);
                          rect(870, 180, 60, 125);
                          fill(black);
                          textSize(30);
                          text("电", 860, 180, 80, 40);
                          text("脑", 860, 210, 80, 40);
                          text("获", 860, 240, 80, 40);
                          text("胜", 860, 270, 80, 40);
                          noLoop();
                        }
                      }
                }
              }
            //电脑走棋
            computer();
          }
        }
  }
}
