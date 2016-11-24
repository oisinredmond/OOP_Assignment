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
  }
}