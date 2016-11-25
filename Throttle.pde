class Throttle
{
  int bar_height;
  int bar_width;
  int mark = 0;
  int posx;
  int posy;
  float sliderx = width-125;
  float slidery = height - 400;
  float sliderwidth = 25;
  float sliderheight  = 15;
  
  Throttle(int bar_height,int bar_width,int posx,int posy)
  {
    this.bar_height = bar_height;
    this.bar_width = bar_width;
    this.posx = posx;
    this.posy = posy;
  }
  
  void render()
  {
    stroke(255,0,0);
    noFill();
    
    rect(posx,posy,bar_width,bar_height);
    
    for(int i =bar_height;i>0;i--)
    {
      float j = map(i,0,bar_height,0,255);
      stroke(255,0,j);
      line(posx,posy + bar_height -i,posx + bar_width,posy + bar_height -i);
    }
    
    fill(0,255,0);
    rect(sliderx,slidery,sliderwidth,sliderheight);
    
    if(mousePressed && mouseX > throttle.sliderx && mouseX < throttle.sliderx+throttle.sliderwidth && mouseY > throttle.slidery -20 && mouseY < throttle.slidery+throttle.sliderheight
       +20 && mouseY > posy && mouseY < posy + bar_height)
    {
      slidery = mouseY -5;
      ship_speed = map(mouseY,bar_height+posy,posy,0,1000);
    }
    
    textSize(25);
    fill(0,255,0);
    text("THROTTLE",posx-30,posy-10);
  }
}