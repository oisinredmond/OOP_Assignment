class Arrows
{
  float k;
  float j;
  
  void render()
  {
    stroke(255, 0, 0);
    strokeWeight(2);
    
    if(ship_speed > 800.0)
    {
      k = 15;
      j = 3;
    }
    else if(ship_speed > 500.0 && ship_speed < 800.0)
    {
      k = 30;
      j = 10;
    }
    else if(ship_speed > 200.0 && ship_speed < 500.0)
    {
      k = 60;
      j = 20;
    }
    else if(ship_speed > 0.0 && ship_speed < 200.0)
    {
      k = 120;
      j = 40;
    }
    
    if(frameCount % k <= j)
    {
      fill(0, 200, 255);
    }
    else{
      noFill();
    }
    
    beginShape();
    vertex(width / 2, height - 220);
    vertex((width / 2) - 150, height - 200);
    vertex((width / 2) - 130, height - 220);
    vertex(width / 2, height - 240);
    vertex((width/2) + 150, height - 220);
    vertex((width / 2) + 170, height - 200);
    endShape(CLOSE);
    
    if(frameCount % k <= (j * 2) && frameCount % k > j)
    {
      fill(0, 200, 255);
    }
    else{
      noFill();
    }

    beginShape();
    vertex(width / 2, height - 260);
    vertex((width / 2) - 110, height - 245);
    vertex((width / 2) - 100, height - 260);
    vertex((width / 2), height - 275);
    vertex((width / 2) + 110, height - 260);
    vertex((width / 2) + 120, height - 245);
    endShape(CLOSE);
   
   if(frameCount % k <= (j * 3) - 1 && frameCount % k > (j * 2))
    {
      fill(0, 200, 255);
    }
    else{
      noFill();}
    
    beginShape();
    vertex(width / 2, height - 300);
    vertex(width / 2 - 90, height - 285);
    vertex(width / 2 - 80, height - 300);
    vertex(width / 2, height - 315);
    vertex(width / 2 + 90, height - 300);
    vertex(width / 2 + 100, height - 285);
    endShape(CLOSE);
  }
}