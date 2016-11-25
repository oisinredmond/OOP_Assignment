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
  }
  
  void render()
  {
    stroke(255,0,0);
    textSize(23);
    rect(posx,posy,sizex,sizey);
    text("m/s",posx+sizex+10,posy+35);
    text("Orbital Speed",posx+5,posy-10);
    stroke(0,255,0);
    text(speed,posx+10,posy+35);
  }
}