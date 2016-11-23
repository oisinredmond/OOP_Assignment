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
    if(mouseX > (width/2)-100 && mouseX< (width/2)+100 && mouseY>(height-140) && mouseY<(height-10))
    {
      rotateX(mouseY * 0.05);
      rotateY(mouseX * 0.05);
    }
    sphere(radius);
    popMatrix();
  }
}