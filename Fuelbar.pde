class Fuelbar
{
  int bar_height;
  int bar_width;
  int posx;
  int posy;
  
  Fuelbar(int bar_height,int bar_width,int posx,int posy)
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
      stroke(255,j,0);
      line(posx,posy + bar_height -i,posx + bar_width,posy + bar_height -i);
    }
    
    textSize(25);
    fill(255,0,0);
    text("FUEL",posx,posy + bar_height + 20);
  }
}