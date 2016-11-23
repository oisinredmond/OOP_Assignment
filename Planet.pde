class Planet
{
  float px;
  float py;
  float pz;
  float radius;
  PShape earth;
  PImage earthtexture = loadImage("earthmap1k.jpg");
  
  Planet(float x,float y,float z,float radius)
  {
    px=x;
    py=y;
    pz=z;
    this.radius = radius;
  }
  
  void render()
  {
    rect((width/2)-100,height-140,200,130);
    pushMatrix();
    noStroke();
    noFill();
    translate(px,py,pz);
    earth = createShape(SPHERE,radius);
    earth.setTexture(earthtexture);
    if(mouseX > (width/2)-100 && mouseX< (width/2)+100 && mouseY>(height-140) && mouseY<(height-10))
    {
      earth.rotateY(mouseX*(-0.04));
    }
    shape(earth,0,0);
    popMatrix();
  }
}