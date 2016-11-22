void setup()
{
  fullScreen();
  background(0);
  space = loadImage("maxresdefault.jpg");
  cockpit = new Cockpit_outline();
  smooth();
}
PImage space;

Cockpit_outline cockpit;

void draw()
{
  image(space,0,0,width,height);
  cockpit.display();
}