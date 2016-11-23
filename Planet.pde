class Planet
{
  float px;
  float py;
  float pz;
  float radius;
  
  Planet(float x,float y,float z,float radius)
  {
    px=x;
    py=y;
    pz=z;
    this.radius = radius;
  }
  
  void render()
  {
    stroke(255,0,0);
    fill(0);
    rect((width/2)-100,height-140,200,130);
    pushMatrix();
    translate(px,py, pz);
    sphere(radius);
    popMatrix();
  }
}