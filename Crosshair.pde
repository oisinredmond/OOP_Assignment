class Crosshair
{
  float speed;
  float theta = 0.0;
  float cx;
  float cy;
  float radius;
  int i = 0;
  
  Crosshair(float x, float y, float radius,float speed)
  {
    this.speed = speed;
    this.radius = radius;
    cx = x;
    cy = y;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    noFill();
    stroke(255, 0, 0);
    strokeWeight(1);
    
    for(int i = 0 ; i < 2 * PI ; i ++)
    {
      float arcTheta = theta - (i * speed);
      arc(cx, cy, radius, radius, arcTheta, arcTheta+1);
      arc(cx, cy, radius-10, radius-10, arcTheta, arcTheta+1);
      arc(cx, cy, radius-20, radius-20, arcTheta, arcTheta+1);
      arc(cx, cy, radius-30, radius-30, arcTheta, arcTheta+1);
      arcTheta = arcTheta + PI;
      arc(cx, cy, radius, radius, arcTheta, arcTheta+1);
      arc(cx, cy, radius-10, radius-10,arcTheta,arcTheta+1);
      arc(cx, cy, radius-20, radius-20,arcTheta,arcTheta+1);
      arc(cx, cy, radius-30, radius-30,arcTheta,arcTheta+1);
    }
    
    line(cx, cy - 10, cx, cy + 10);
    line(cx - 10, cy, cx + 10, cy);
  }
}