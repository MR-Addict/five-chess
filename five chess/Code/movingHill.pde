//退出移动的山峰
void movingHill()
{  
  background(white); 
  cursor(ARROW);
  for (int i=0; i<layers.length; i++) 
  { 
    color col = lerpColor(0, 255, 0.8-0.8/8*i);
    fill(col); 
    layers[i].display();
  } 
  theta += TWO_PI/1200;
  fill(black);
  textSize(70);
  text("THANK YOU!", width/2, 50*8);
  textSize(40);
  text("By MR.Addict", 12*50, 10*50);
} 
