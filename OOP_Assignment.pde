void setup()
{
  fullScreen();
  cockpit = new Cockpit_outline();
  pg = createGraphics(width, height);
  bgimage = loadImage("maxresdefault.jpg");
  radar = new Radar(width-100,height-90,70,0.05f);
  crosshair = new Crosshair(width/2.0f,height/2.0f,60,0.05);
  
  smooth();
  background(0);
}

PGraphics pg;
PImage bgimage;

Cockpit_outline cockpit;
Crosshair crosshair;
Radar radar;

void draw()
{
  image(bgimage,0,0);
  cockpit.display();
  radar.update();
  radar.render();
  crosshair.update();
  crosshair.render();
}