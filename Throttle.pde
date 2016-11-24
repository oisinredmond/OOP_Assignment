class Throttle
{
  int bar_height;
  int bar_width;
  int posx;
  int posy;
  
  Throttle(int bar_height,int bar_width,int x,int y)
  {
    this.bar_height = bar_height;
    this.bar_width = bar_width;
    posx = x;
    posy = y;
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
    
    textSize(25);
    fill(0,255,0);
    text("THROTTLE",posx-30,posy-10);
  }
}