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
  
  void planetInfo()
  {
    if(mouseX > (width/2)-100 && mouseX< (width/2)+100 && mouseY>(height-140) && mouseY<(height-10))
    {
      fill(255,0,0);
      stroke(255,0,0);
      pushMatrix();
      ellipse(mouseX,mouseY,3,3);
      line(mouseX,mouseY,mouseX+30,mouseY);
      line(mouseX+30,mouseY,mouseX+60,mouseY-20);
      line(mouseX+60,mouseY-20,mouseX+80,mouseY-40);
      fill(0);
      rect(mouseX+80,mouseY-20,200,100);
      popMatrix();
    }
  }
}
}