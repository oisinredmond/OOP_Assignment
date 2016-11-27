class Radar
{
  int trailLength;  
  float theta, speed, radius;
  float x, y , lineTheta, intensityChange;
  float rx = width-100;
  float ry = height-100;

  Radar(float x, float y, float radius, float speed, int trailLength,float theta)
  {
    rx = x;
    ry = y;
    this.speed = speed;
    this.radius = radius;
    this.speed = speed;
    this.trailLength = trailLength;
    this.theta = theta;
  }
  
  void update()
  {
    theta += speed;
  }
    
  void render()
  {
    stroke(0, 255, 0);
    strokeWeight(1);
    fill(0);
    ellipse(rx, ry, (radius * 2) + 3, (radius * 2) + 3);
    intensityChange = 255.0f / (1.1 * trailLength);
    
    for(int i = 0 ; i < trailLength ; i ++)
    {
      lineTheta = theta - (i * speed);
      stroke(0, 255 - (i * intensityChange), 0);
      x = rx + sin(lineTheta) * radius - 1;
      y = ry - cos(lineTheta) * radius - 1;
      line(rx, ry, x, y);
    }
    
    noFill();
    stroke(0,255,0);
    ellipse(rx, ry, 20, 20);
    ellipse(rx, ry, 40, 40);
    ellipse(rx, ry, 60, 60);
    ellipse(rx, ry, 80, 80);
    ellipse(rx, ry, 100, 100);
    ellipse(rx, ry, 120, 120);
    
    fill(0,255,0);
    beginShape();
    vertex(rx,ry);
    vertex(rx - 7,ry + 7);
    vertex(rx,ry - 7);
    vertex(rx + 7,ry + 7);
    vertex(rx,ry);
    endShape();
  }
}