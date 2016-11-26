class Engine_temp
{
  float bar_height;
  float bar_width;
  int posx;
  int posy;
  float temp;
  float j;
  
  Engine_temp(float bar_width,float bar_height,int posx,int posy)
  {
    this.bar_height = bar_height;
    this.bar_width = bar_width;
    this.posx = posx;
    this.posy = posy;
  }
  
  void render()
  {
    noFill();
    textSize(16);
    temp  = map(ship_speed,0,1000,0,100);
    temp += random(0,3);
    rect(posx,posy,bar_width,bar_height);
    text("ENGINE TEMP (C)",posx - 40,posy+bar_height+13);
    text(temp,posx-15,posy-5);
    
    if(temp > 90 && frameCount % 10 <= 5)
    {
      stroke(255,0,0);
      strokeWeight(2);
      rect(posx-5,posy-5,bar_width + 10,bar_height+10);
      strokeWeight(1);
    }
    
    for(float i = temp; i > 0; i--)
    {
      j = map(i,0,bar_height,0,255);
      stroke(255,j,0);
      line(posx,posy+bar_height - i,posx + bar_width,posy + bar_height - i);
    }
  }
}