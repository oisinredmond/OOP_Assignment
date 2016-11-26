class Speedometer
{
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
  
  
  void render()
  {
    stroke(255,0,0);
    textSize(16);
    fill(0);
    rect(posx,posy,sizex,sizey);
    rect(posx,posy + 45,sizex,sizey);
    rect(posx,posy+90,sizex,sizey);

    fill(0,255,0);
    text(ship_speed,posx+2,posy+15);
    text("m/s",posx+sizex+5,posy+15);
    text("Orbital Speed",posx,posy-5);
    
    text(pressure,posx+2,posy+65);
    text("kPa",posx+sizex+5,posy+65);
    text("Atmos. Pressure",posx,posy+40);
    
    text(gravity,posx+2,posy+110);
    text("m/s",posx+sizex+5,posy+110);
    text("Gravity",posx,posy+85);
    textSize(10);
    text("2",posx+sizex+35,posy+100);
  }
}