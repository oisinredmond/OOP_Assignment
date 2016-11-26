class Planet_menu
{
  float px;
  float py;
  float pz;
  float radius;
  PImage earthtexture = loadImage("earthmap1k.jpg");
  PImage marstexture = loadImage("mars_map.jpg");
  PImage jupitertexture = loadImage("2.jpg");
  PImage earthbg = loadImage("maxresdefault.jpg");
  PImage marsbg = loadImage("mars_bg.jpg");
  PImage jupiterbg = loadImage("jupiter-1.jpg");
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
    jupiter.rotateX(-0.5);
    if(mouseX > (width/2)+100 && mouseX < (width/2)+300 && mouseY < 140 && mouseY > 10)
    {
      jupiter.rotateY(mouseX*(-0.05));
    }
    shape(jupiter);
    popMatrix();
    
    stroke(255,0,0);
    textSize(20);
    if(mouseX > (width/2)-300 && mouseX < (width/2)-100 && mouseY < 140 && mouseY > 10)
    {
      ellipse((width/2)-200,140,3,3);
      line((width/2)-200,140,(width/2)-200,170);
      rect((width/2)-240,170,80,25);
      stroke(0,255,0);
      text("EARTH",(width/2)-235,190);
      
      if(mousePressed)
      {
        background = earthbg;
        globetexture = earthtexture;
        planet_name = "Earth";
        planet_pop = "7 Billion";
        planet_diam = "12,742km";
        planet_hab = "100%";
        gravity = 9.807;
        pressure = 0.1;
      }
    }
    
    if(mouseX > (width/2)-100 && mouseX < (width/2)+100 && mouseY < 140 && mouseY > 10)
    {
      ellipse(width/2,140,3,3);
      line(width/2,140,width/2,170);
      rect((width/2)-40,170,80,25);
      stroke(0,255,0);
      text("MARS",(width/2)-35,190);
      
      if(mousePressed)
      {
        background = marsbg;
        globetexture = marstexture;
        planet_name = "Mars";
        planet_pop = "10 Million";
        planet_diam = "6,779 km";
        planet_hab = "20%";
        gravity = 3.711;
        pressure = 0.03;
      }
    }
    
    if(mouseX > (width/2)+100 && mouseX < (width/2)+300 && mouseY < 140 && mouseY > 10)
    {
      ellipse((width/2)+200,140,3,3);
      line((width/2)+200,140,(width/2)+200,170);
      rect((width/2)+160,170,100,25);
      stroke(0,255,0);
      text("JUPITER",(width/2)+160,190);
      

      if(mousePressed)
      {
          background = jupiterbg;
          globetexture = jupitertexture;
          planet_name = "Jupiter";
          planet_pop = "0";
          planet_diam = "6,779 km";
          planet_hab = "0%";
          gravity = 24.79 ;
          pressure = 100;
      }
    }
  }
}