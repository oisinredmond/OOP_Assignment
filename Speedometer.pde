class Speedometer
{
  float speed;
  int posx;
  int posy;
  int sizex;
  int sizey;
  
  Speedometer(int x,int y,int sizex,int sizey)
  {
    posx = x;
    posy = y;
    this.sizex = sizex;
    this.sizey = sizey;
  }
  
  void update()
  {
    speed = ship_speed;
    rect(posx,posy,sizex,sizey);
    textSize(20);
    text(ship_speed,posx+20,posy+50);
  }
}