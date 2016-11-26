import ddf.minim.*;
Minim minim;
AudioPlayer music;

void setup()
{
  size(1280,720,P3D); 
  
  minim = new Minim(this);
  music = minim.loadFile("Ambient Space Music.mp3");
  //music.play();
  
  PFont font;
  font = loadFont("OCRAExtended-48.vlw");
  textFont(font);
  
  cockpit = new Cockpit_outline();
  arrows = new Arrows();
  radar = new Radar(width-100,height-90,70,0.05f);
  crosshair = new Crosshair(width/2.0f,height/2.0f,60,0.05);
  planet = new Planet(width/2,height-80,0,50);
  fuelbar = new Fuelbar(300,50,60,height/2-100);
  throttle = new Throttle(300,50,width-100,height/2 - 200);
  speedometer = new Speedometer(width/2 -450,height -120,90,25);
  planet_menu = new Planet_menu(width/2,80,0,50);
  engine_temp = new Engine_temp(30,110,(width/2)-230,height-130);
  
  pg = createGraphics(width, height);
  background = loadImage("maxresdefault.jpg");  
  globetexture = loadImage("earthmap1k.jpg");
  
  smooth();
}

PGraphics pg;
PImage background;
PImage globetexture;

float ship_speed = 500;
float pressure = 0.1;
float gravity = 9.807;
float fuel_height;
int no_fuel = 0;

String planet_name = "Earth";
String planet_pop = "7 Billion";
String planet_diam = "12,742km";
String planet_hab = "100%";
String planet_gravity = "9.8 m/s^1";
String planet_mass = "5.9736x10^24 kg";
String planet_gas1 = "78% Nitrogen";
String planet_gas2 = "21% Oxygen";
String planet_gas3 = "0.03% CO2";

Cockpit_outline cockpit;
Arrows arrows;
Crosshair crosshair;
Radar radar;
Planet planet;
Fuelbar fuelbar;
Throttle throttle;
Speedometer speedometer;
Planet_menu planet_menu;
Engine_temp engine_temp;

void draw()
{
  textAlign(LEFT);
  
  image(background,0,0);
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
  speedometer.render();
  engine_temp.render();
}