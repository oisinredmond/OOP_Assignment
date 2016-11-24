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
    noFill();
    stroke(255,0,0);
    rect((width/2)-100,height-140,200,130);
    pushMatrix();
    noStroke();
    translate(px,py,5);
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
      stroke(0,255,0);
      textSize(14);
      text("Name:Earth",mouseX+85,mouseY-50);
      text("Galaxy:Milkyway",mouseX+85,mouseY-38);
      text("Diameter:12,742km",mouseX+85,mouseY-26);
      text("Star:Sol",mouseX+85,mouseY-14);
      text("Population:7 Billion",mouseX+85,mouseY-2);
      text("Atmosphere:78% Nitrogen",mouseX+85,mouseY+10);
      text("           21% Oxygen",mouseX+85,mouseY+22);
      text("           0.03% CO2",mouseX+85,mouseY+34);
      stroke(255,0,0);
      ellipse(mouseX,mouseY,3,3);
      line(mouseX,mouseY,mouseX+30,mouseY);
      line(mouseX+30,mouseY,mouseX+60,mouseY-20);
      line(mouseX+60,mouseY-20,mouseX+80,mouseY-20);
      rect(mouseX+80,mouseY-60,200,100);
      fill(0);
    }
  }
}