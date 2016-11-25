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
  PShape mercury;
  
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
    
    pushMatrix();
    noStroke();
    translate(px - 200,py,0);
    earth = createShape(SPHERE,radius);
    earth.setTexture(earthtexture);
    shape(earth);
    popMatrix();
    pushMatrix();
    noStroke();
    translate(px,py,0);
    mars = createShape(SPHERE,radius);
    mars.setTexture(marstexture);
    shape(mars);
    popMatrix();
  }
}