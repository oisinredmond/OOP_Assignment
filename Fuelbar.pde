class Fuelbar
{
  float bar_height;
  float bar_width;
  int posx;
  int posy;
  float fuel_height;
  float fuel_loss;
  
  Fuelbar(int bar_height,int bar_width,int posx,int posy)
  {
    this.bar_height = bar_height;
    this.bar_width = bar_width;
    this.posx = posx;
    this.posy = posy;
    fuel_height = bar_height;
  }
  
  void render()
  {
    stroke(255,0,0);
    noFill();
    rect(posx,posy,bar_width,bar_height);
    textSize(25);
    fill(0,255,0);
    text("FUEL",posx,posy + bar_height + 40);
    
    fuel_loss = map(ship_speed,0,1000,0,1);
    
    if(fuel_height > 0)
    {
      fuel_height = fuel_height - (0.5*fuel_loss);
    }
    else
    {
        if(frameCount % 60 <= 30)
        {
          text("FUEL EMPTY",(width/2) - 85,height/2 - 40);
          noFill();
          rect(posx-5,posy-5,bar_width+10,bar_height+10);
          rect(posx-10,posy-10,bar_width+20,bar_height+20);
          fill(255,0,0);
        }
        
        fill(255,0,0);
        rect(posx -20,posy-50,100,30);
    }
    
    for(float i = fuel_height; i > 0; i--)
    {
      float j = map(i,0,bar_height,0,255);
      stroke(255,j,0);
      line(posx,posy+bar_height - i,posx + bar_width,posy + bar_height - i);
    }
  }
}