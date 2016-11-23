class Planet
{
  float px;
  float py;
  float pz;
  float radius;
  
  Planet(float x,float y,float z,float radius,PImage earth)
  {
    px=x;
    py=y;
    pz=z;
    this.radius = radius;
    this.earth = earth;
  }
  
  void render()
  {
    stroke(255,0,0);
    fill(0);
    rect((width/2)-100,height-140,200,130);
  }
}