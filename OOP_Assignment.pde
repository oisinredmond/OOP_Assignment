void setup()
{
  fullScreen(P3D);  
  cockpit = new Cockpit_outline();
  arrows = new Arrows();
  radar = new Radar(width-100,height-90,70,0.05f);
  crosshair = new Crosshair(width/2.0f,height/2.0f,60,0.05);
  planet = new Planet(width/2,height-80,0,50);
  
  pg = createGraphics(width, height);
  bgimage = loadImage("maxresdefault.jpg");  
  smooth();
  background(0);
}

PGraphics pg;
PImage bgimage;

Cockpit_outline cockpit;
Arrows arrows;
Crosshair crosshair;
Radar radar;
Planet planet;

void draw()
{
  image(bgimage,0,0);
  cockpit.render();
  arrows.render();
  radar.update();
  radar.render();
  crosshair.update();
  crosshair.render();
  planet.render();
}