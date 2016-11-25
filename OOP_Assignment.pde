void setup()
{
  fullScreen(P3D);  
  PFont font;
  font = loadFont("OCRAExtended-48.vlw");
  textFont(font);
  
  cockpit = new Cockpit_outline();
  arrows = new Arrows();
  radar = new Radar(width-100,height-90,70,0.05f);
  crosshair = new Crosshair(width/2.0f,height/2.0f,60,0.05);
  planet = new Planet(width/2,height-80,0,50);
  fuelbar = new Fuelbar(300,50,60,height-450);
  throttle = new Throttle(300,50,width-100,height-550);
  speedometer = new Speedometer(width/2 -500,height -100,150,70);
  planet_menu = new Planet_menu(width/2,80,0,50);
  
  pg = createGraphics(width, height);
  background = loadImage("maxresdefault.jpg");  
  globetexture = loadImage("earthmap1k.jpg");
  
  smooth();
  background(0);
}

PGraphics pg;
PImage background;
PImage globetexture;
float ship_speed = 500;

String planet_name = "Earth";
String planet_pop = "7 Billion";
String planet_diam = "12,742km";
String planet_hab = "100%";
String planet_gravity = "9.8 m/s^1";

Cockpit_outline cockpit;
Arrows arrows;
Crosshair crosshair;
Radar radar;
Planet planet;
Fuelbar fuelbar;
Throttle throttle;
Speedometer speedometer;
Planet_menu planet_menu;

void draw()
{
  textAlign(LEFT);
  
  image(background,0,0);
  cockpit.render();
  fuelbar.render();
  arrows.render();
  radar.update();
  radar.render();
  crosshair.update();
  crosshair.render();
  throttle.render();
  planet.render();
  planet.planetInfo();
  speedometer.render();
  speedometer.update();
  planet_menu.render();
}