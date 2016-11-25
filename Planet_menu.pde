class Planet_menu
{
  float px;
  float py;
  float pz;
  float radius;
  PImage earthtexture = loadImage("earthmap1k.jpg");
  PImage marstexture = loadImage("mars_map.jpg");
  PImage jupitertexture = loadImage("2.jpg");
  PShape earth;
  PShape mars;
  PShape jupiter;
  
  Planet_menu(float px,float py,float pz,float radius)
  {
    this.px = px;
    this.py = py;
    this.pz = pz;
    this.radius = radius;
  }
  
  void render()
  {
    rect((width/2)-100,10,200,130);
    rect((width/2)-300,10,200,130);
    rect((width/2)+100,10,200,130);
    
    noStroke();
    pushMatrix();
    translate(px - 200,py,0);
    earth = createShape(SPHERE,radius);
    earth.setTexture(earthtexture);
    earth.rotateX(-0.5);
    if(mouseX > (width/2)-300 && mouseX < (width/2)-100 && mouseY < 140 && mouseY > 10)
    {
      earth.rotateY(mouseX*(-0.04));
    }
    shape(earth);
    popMatrix();
    
    pushMatrix();
    translate(px,py,0);
    mars = createShape(SPHERE,radius);
    mars.setTexture(marstexture);
    mars.rotateX(-0.5);
    if(mouseX > (width/2)-100 && mouseX < (width/2)+100 && mouseY < 140 && mouseY > 10)
    {
      mars.rotateY(mouseX*(-0.04));
    }
    shape(mars);
    popMatrix();
    
    pushMatrix();
    translate(px + 200,py,0);
    jupiter = createShape(SPHERE,radius);
    jupiter.setTexture(jupitertexture);
    shape(jupiter);
    popMatrix();
  }
}