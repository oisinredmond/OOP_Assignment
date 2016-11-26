class Planet
{
  float px;
  float py;
  float pz;
  float radius;
  PShape globe;
  
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
    noStroke();
    fill(255,255,255);
    translate(px,py,5);
    globe = createShape(SPHERE,radius);
    globe.setTexture(globetexture);
    if(mouseX > (width/2)-100 && mouseX< (width/2)+100 && mouseY>(height-140) && mouseY<(height-10))
    {
      globe.rotateY(mouseX*(-0.04));
    }
    shape(globe,0,0);
    popMatrix();
  }
  
  void planetInfo()
  {
    int rectx = width/2 + 180;
    int recty = height - 140;
    
    textSize(15);
    stroke(255,0,0);
    fill(0);
    rect(rectx,recty,200,130);
    ellipse((width/2)+100,height-70,3,3);
    line((width/2)+100,height-70,(width/2)+130,height-70);
    line((width/2)+130,height-70,(width/2)+160,height-90);
    line((width/2)+160,height-90,(width/2)+180,height-90);
    
    stroke(0,255,0);
    fill(0,255,0);
    text("Name: " + planet_name,rectx + 5,recty + 12);
    text("Galaxy: Milkyway",rectx + 5,recty + 24);
    text("Diameter: " + planet_diam,rectx + 5,recty + 36);
    text("Star: Sol",rectx + 5,recty + 48);
    text("Population: " + planet_pop,rectx + 5,recty + 60);
    text("Habitability: " + planet_hab,rectx + 5,recty + 72);
    text("Mass: "+planet_mass,rectx+5,recty+84);
    text(planet_gas1,rectx+5,recty+96);
    text(planet_gas2,rectx+5,recty+108);
    text(planet_gas3,rectx+5,recty+120);

  }
}