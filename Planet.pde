class Planet
{
  float px;
  float py;
  float pz;
  float radius;
  PShape globe;
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
    globe = createShape(SPHERE,radius);
    globe.setTexture(earthtexture);
    if(mouseX > (width/2)-100 && mouseX< (width/2)+100 && mouseY>(height-140) && mouseY<(height-10))
    {
      globe.rotateY(mouseX*(-0.04));
    }
    shape(globe,0,0);
    popMatrix();
  }
  
  void planetInfo()
  {
    if(mouseX > (width/2)-100 && mouseX< (width/2)+100 && mouseY>(height-140) && mouseY<(height-10))
    {
      stroke(0,255,0);
      textSize(14);
      int rectx = mouseX + 80;
      int recty = mouseY - 60;
      rect(rectx,recty,200,100);
      text("Name:Earth",rectx + 5,recty + 10);
      text("Galaxy:Milkyway",rectx + 5,recty + 22);
      text("Diameter:12,742km",rectx + 5,recty + 34);
      text("Star:Sol",rectx + 5,recty + 46);
      text("Population:7 Billion",rectx + 5,recty + 58);
      text("Atmosphere:78% Nitrogen",rectx + 5,recty + 70);
      text("           21% Oxygen",rectx + 5,recty + 82);
      text("           0.03% CO2",rectx + 5,recty + 94);
      stroke(255,0,0);
      ellipse(mouseX,mouseY,3,3);
      line(mouseX,mouseY,mouseX+30,mouseY);
      line(mouseX+30,mouseY,mouseX+60,mouseY-20);
      line(mouseX+60,mouseY-20,mouseX+80,mouseY-20);
    }
  }
}