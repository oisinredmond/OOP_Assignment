import processing.sound.*;

PGraphics pg;
PFont font;
PImage background;
PImage globetexture;

float ship_speed = 500;
float pressure = 0.1;
float gravity = 9.807;
float fuel_height;
int no_fuel = 0;
int begin;

String planet_name = "Earth";
String planet_pop = "7 Billion";
String planet_diam = "12,742km";
String planet_hab = "100%";
String planet_gravity = "9.8 m/s^1";
String planet_mass = "5.9736x10^24 kg";
String planet_gas1 = "78% Nitrogen";
String planet_gas2 = "21% Oxygen";
String planet_gas3 = "0.03% CO2";

SoundFile file;
Cockpit cockpit;
Arrows arrows;
Crosshair crosshair;
Radar radar;
Planet planet;
Fuelbar fuelbar;
Throttle throttle;
Measurements measurements;
Planet_menu planet_menu;
Engine_temp engine_temp;

void setup()
{
  fullScreen(P3D); 
  font = loadFont("OratorStd-48.vlw");
  textFont(font);
  
  file = new SoundFile(this, "Ambient Space Music.mp3");
  file.play();
  
  cockpit = new Cockpit();
  arrows = new Arrows();
  radar = new Radar(width - 100, height - 90, 70, 0.01, 50, 0);
  crosshair = new Crosshair(width / 2, height / 2, 60, 0.05);
  planet = new Planet(width / 2, height - 80, 0, 50);
  fuelbar = new Fuelbar(300, 50, 60, (height / 2) - 100);
  throttle = new Throttle(300, 50, width - 100, (height / 2) - 200);
  measurements = new Measurements((width / 2) - 450, height - 120, 90, 25);
  planet_menu = new Planet_menu(width / 2, 80, 0, 50);
  engine_temp = new Engine_temp(30, 110,(width / 2) - 230, height - 130);
  
  pg = createGraphics(width, height);
  background = loadImage("maxresdefault.jpg");  
  globetexture = loadImage("earthmap1k.jpg");
  
  smooth();
}

void draw()
{
  textAlign(LEFT);
  image(background,0,0);
  
  if(begin == 0)
  {
    cockpit.render();
  }
  else
  {
    planet_menu.render();
    cockpit.render();
    fuelbar.render();
    arrows.render();
    radar.update();
    radar.render();
    planet.render();
    planet.planetInfo();
    crosshair.update();
    crosshair.render();
    throttle.render();
    measurements.render();
    engine_temp.render();
  }
}