class Fuelbar
{
  float bar_width, bar_height, fuel_loss;
  int posx, posy;
  
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
    text("FUEL",posx - 5,posy + bar_height + 40);
    
    fuel_loss = map(ship_speed,0,1000,0,1);
    
    if(fuel_height > 0)
    {
      fuel_height = fuel_height - (0.17 * fuel_loss);
    }
    else
    {
      if(frameCount % 60 <= 30)
      {
        fill(255,0,0);
        text("FUEL EMPTY",(width / 2) - 85,(height / 2) - 80);
        noFill();
        stroke(255,255,0);
        rect(posx - 5,posy - 5,bar_width + 10,bar_height + 10);
        rect(posx - 10,posy - 10,bar_width + 20,bar_height + 20);
        fill(255,0,0);
      }
      
      fill(255,255,0);
      rect(posx - 20,posy - 50,100,30);
      fill(0);
      text("REFUEL",posx - 15,posy - 30);
      
      if(mousePressed && mouseX > posx - 20 && mouseX < posx + 80 && mouseY > posy - 50 && mouseY < posy - 20)
      {
        fuel_height = bar_height;
        no_fuel = 0;
      }
    }
    
    for(float i = fuel_height; i > 0; i--)
    {
      float j = map(i,0,bar_height,0,255);
      stroke(255,j,0);
      line(posx,posy + bar_height - i,posx + bar_width,posy + bar_height - i);
    }
  }
}