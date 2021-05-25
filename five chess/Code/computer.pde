//电脑
void computer()
{
  int[][] score=new int[15][15];
  for (int x=0; x<15; x++)
    for (int y=0; y<15; y++)
      score[x][y]=0;
  for (int i=0; i<15; i++)
    for (int j=0; j<15; j++)
    {
      if (pos[i][j]==0)
      {
        //修复bug
        for (int a=-1; a<=1; a++)
          for (int b=-1; b<=1; b++)
            if (!(a==0&&b==0)) {
              //玩家角度
              int num1=0, num2=0, space1=0, space2=0;
              for (int k=1; k<=3; k++)
                if (i+a*k<15&&i+a*k>=0&&j+b*k<15&&j+b*k>=0&&k!=0)
                  if (pos[i+a*k][j+b*k]==1)num1++;
                  else if (pos[i+a*k][j+b*k]==0) {
                    space1++;
                    break;
                  } else break;
              for (int k=-1; k>=-3; k--)
                if (i+a*k<15&&i+a*k>=0&&j+b*k<15&&j+b*k>=0)
                  if (pos[i+a*k][j+b*k]==1)num2++;
                  else if (pos[i+a*k][j+b*k]==0) {
                    space2++;
                    break;
                  } else break;
              if (num1==2&&num2==1) {
                if (space1==1&&space2==1)score[i][j]+=200;
                else if (space1==1||space2==1)score[i][j]+=50;
              } else if (num1==2&&num2==2&&(space1==1||space2==1))score[i][j]+=500;
              else if(num1==3&&num2==1&&(space1==1||space2==1))score[i][j]+=500;
              else if (num1==2&&num2==2&&(space1==1||space2==1))score[i][j]+=1000;
              //电脑角度
              num1=0;
              num2=0; 
              space1=0; 
              space2=0;
              for (int k=1; k<=3; k++)
                if (i+a*k<15&&i+a*k>=0&&j+b*k<15&&j+b*k>=0&&k!=0)
                  if (pos[i+a*k][j+b*k]==2)num1++;
                  else if (pos[i+a*k][j+b*k]==0) {
                    space1++;
                    break;
                  } else break;
              for (int k=-1; k>=-3; k--)
                if (i+a*k<15&&i+a*k>=0&&j+b*k<15&&j+b*k>=0)
                  if (pos[i+a*k][j+b*k]==2)num2++;
                  else if (pos[i+a*k][j+b*k]==0) {
                    space2++;
                    break;
                  } else break;
              if (num1==1&&num2==1) {
                if (space1==1&&space2==1)score[i][j]+=15;
                else if (space1==1||space2==1)score[i][j]+=4;
              } else if (num1==2&&num2==1) {
                if (space2==1&&space2==1)score[i][j]+=200;
                else if (space1==1||space2==1)score[i][j]+=50;
              } else if (num1==2&&num2==2&&(space1==1||space2==1))score[i][j]+=10000;
              //主要算法
              num1=0;
              num2=0; 
              space1=0; 
              space2=0;
              for (int k=1; k<=4; k++) {
                if (i+a*k<15&&i+a*k>=0&&j+b*k<15&&j+b*k>=0)
                  if (pos[i+a*k][j+b*k]==1)num1++;
                  else if (pos[i+a*k][j+b*k]==0) {
                    space1++;
                    break;
                  } else break;
              }
              for (int k=1; k<=4; k++) {
                if (i+a*k<15&&i+a*k>=0&&j+b*k<15&&j+b*k>=0)
                  if (pos[i+a*k][j+b*k]==2)num2++;
                  else if (pos[i+a*k][j+b*k]==0) 
                  {
                    space2++;
                    break;
                  } else break;
              }
              //从玩家角度
              if (space1==0)
                switch(num1)
              {
              case 0:
                score[i][j]+=0;
                break;
              case 1:
                score[i][j]+=1;
                break;
              case 2:
                score[i][j]+=5;
                break;
              case 3:
                score[i][j]+=20;
                break;
              case 4:
                score[i][j]+=1000;
                break;
              } else if (space1==1)
                switch(num1)
              {
              case 0:
                score[i][j]+=0;
                break;
              case 1:
                score[i][j]+=1;
                break;
              case 2:
                score[i][j]+=10;
                break;
              case 3:
                score[i][j]+=100;
                break;
              case 4:
                score[i][j]+=1000;
                break;
              }
              //从电脑自己
              if (space2==0)
                switch(num2)
              {
              case 0:
                score[i][j]+=0;
                break;
              case 1:
                score[i][j]+=2;
                break;
              case 2:
                score[i][j]+=8;
                break;
              case 3:
                score[i][j]+=50;
                break;
              case 4:
                score[i][j]+=10000;
                break;
              } else if (space2==1)
                switch(num2)
              {
              case 0:
                score[i][j]+=0;
                break;
              case 1:
                score[i][j]+=2;
                break;
              case 2:
                score[i][j]+=30;
                break;
              case 3:
                score[i][j]+=200;
                break;
              case 4:
                score[i][j]+=10000;
                break;
              }
            }
      }
    }
  int x=0, y=0, max=0;
  for (int n=0; n<15; n++)
    for (int m=0; m<15; m++) {
      if (score[n][m]>max&&pos[n][m]==0) {
        max=score[n][m];
        x=n;
        y=m;
      }
    }
  posi_=posi;
  posi=x;
  posj_=posj;
  posj=y;
  pos[x][y]=2;
  count++;
  println("***********"+max+"("+(posi+1)+","+(posj+1)+")"+"************");
  for (x=0; x<15; x++) {
    for (y=0; y<15; y++)
      print(score[y][x]+" ");
    println();
  }
  println("*****************************");
}
