class Planet_menu
{
  float py,px,pz,radius;
  
  PImage earthtexture = loadImage("earthmap1k.jpg");
  PImage marstexture = loadImage("mars_map.jpg");
  PImage jupitertexture = loadImage("2.jpg");
  PImage moontexture = loadImage("moon_map.jpg");
  PImage venustexture = loadImage("venus_map.jpg");
  PImage earthbg = loadImage("maxresdefault.jpg");
  PImage marsbg = loadImage("mars_bg.jpg");
  PImage jupiterbg = loadImage("jupiter-1.jpg");
  PImage moonbg = loadImage("moonbg.jpg");
  PImage venusbg = loadImage("venusbg.jpg");
  
  PShape earth,mars,jupiter,moon,venus;
  
  Planet_menu(float px,float py,float pz,float radius)
  {
    this.px = px;
    this.py = py;
    this.pz = pz;
    this.radius = radius;
  }
  
  void render()
  {
    fill(255,255,255);
    noStroke();
    
    pushMatrix();
    translate(px - 200,py,-10);
    earth = createShape(SPHERE,radius);
    earth.setTexture(earthtexture);
    earth.rotateX(-0.5);
    if(mouseX > (width / 2) - 300 && mouseX < (width / 2) - 100 && mouseY < 140 && mouseY > 10)
    {
      earth.rotateY(mouseX * (-0.04));
    }
    shape(earth);
    popMatrix();
    
    pushMatrix();
    translate(px,py,0);
    mars = createShape(SPHERE,radius);
    mars.setTexture(marstexture);
    mars.rotateX(-0.5);
    if(mouseX > (width / 2) - 100 && mouseX < (width / 2) + 100 && mouseY < 140 && mouseY > 10)
    {
      mars.rotateY(mouseX * (-0.04));
    }
    shape(mars);
    popMatrix();
    
    pushMatrix();
    translate(px + 200,py,0);
    jupiter = createShape(SPHERE,radius);
    jupiter.setTexture(jupitertexture);
    jupiter.rotateX(-0.5);
    if(mouseX > (width / 2)  + 100 && mouseX < (width / 2) + 300 && mouseY < 140 && mouseY > 10)
    {
      jupiter.rotateY(mouseX * (-0.05));
    }
    shape(jupiter);
    popMatrix();
    
    pushMatrix();
    translate(px + 400,py,0);
    moon = createShape(SPHERE,radius);
    moon.setTexture(moontexture);
    moon.rotateX(-0.5);
    if(mouseX > (width / 2) + 300 && mouseX < (width / 2) + 500 && mouseY < 140 && mouseY > 10)
    {
      moon.rotateY(mouseX * (-0.05));
    }
    shape(moon);
    popMatrix();
    
    pushMatrix();
    translate(px -400,py,0);
    venus = createShape(SPHERE,radius);
    venus.setTexture(venustexture);
    venus.rotateX(-0.5);
    if(mouseX > (width / 2) - 500 && mouseX < (width / 2) - 300 && mouseY < 140 && mouseY > 10)
    {
      venus.rotateY(mouseX * (-0.05));
    }
    shape(venus);
    popMatrix();
    
    fill(0);
    stroke(255,0,0);
    rect((width / 2) - 500,10,200,130);
    rect((width / 2) - 100,10,200,130);
    rect((width / 2) - 300,10,200,130);
    rect((width / 2) + 100,10,200,130);
    rect((width / 2) + 300,10,190,130);
    
    stroke(255,0,0);
    fill(0);
    textSize(20);
    
    if(mouseX > (width / 2) - 300 && mouseX < (width / 2) - 100 && mouseY < 140 && mouseY > 10)
    {
      rect((width / 2) - 240,170,80,25);
      ellipse((width / 2) - 200,140,3,3);
      line((width / 2) - 200,140,(width / 2) - 200,170);
      rect((width / 2) - 240,170,80,25);
      fill(0,255,0);
      text("EARTH",(width / 2) - 235,190);
      
      if(mousePressed && fuel_height > 0)
      {
        background = earthbg;
        globetexture = earthtexture;
        planet_name = "Earth";
        planet_pop = "7 Billion";
        planet_diam = "12,742km";
        planet_hab = "100%";
        planet_mass = "5.974x10^24 kg";
        planet_gas1 = "78% Nitrogen";
        planet_gas2 = "21% Oxygen";
        planet_gas3 = "0.03% CO2";
        gravity = 9.807;
        pressure = 0.1;
      }
      else if(mousePressed && fuel_height <= 0)
      {
        no_fuel = 1;
      }
    }
    
    if(mouseX > (width / 2) - 100 && mouseX < (width / 2) + 100 && mouseY < 140 && mouseY > 10)
    {
      ellipse(width / 2,140,3,3);
      line(width / 2,140,width / 2,170);
      rect((width / 2) - 40,170,80,25);
      fill(0,255,0);
      text("MARS",(width / 2) - 35,190);
      
      if(mousePressed && fuel_height > 0)
      {
        background = marsbg;
        globetexture = marstexture;
        planet_name = "Mars";
        planet_pop = "10 Million";
        planet_diam = "6,779 km";
        planet_hab = "20%";
        planet_mass = "6.39×10^23 kg";
        planet_gas1 = "96% CO2";
        planet_gas2 = "1.9% Argon";
        planet_gas3 = "1.9% Nitrogen";
        gravity = 3.711;
        pressure = 0.03;
      }
      else if(mousePressed && fuel_height <= 0)
      {
        no_fuel = 1;
      }
    }
    
    if(mouseX > (width / 2) + 100 && mouseX < (width / 2) + 300 && mouseY < 140 && mouseY > 10)
    {
      ellipse((width / 2) + 200,140,3,3);
      line((width / 2) + 200,140,(width / 2) + 200,170);
      rect((width / 2) + 160,170,100,25);
      fill(0,255,0);
      text("JUPITER",(width / 2) + 160,190);
      
      if(mousePressed && fuel_height > 0)
      {
          background = jupiterbg;
          globetexture = jupitertexture;
          planet_name = "Jupiter";
          planet_pop = "0";
          planet_diam = "6,779 km";
          planet_hab = "0%";
          planet_mass = "1.898×10^27 kg";
          planet_gas1 = "90% Hydrogen";
          planet_gas2 = "10% Helium";
          planet_gas3 = "0.07% Methane";
          gravity = 24.79 ;
          pressure = 100;
      }
      else if(mousePressed && fuel_height <= 0)
      {
        no_fuel = 1;
      }
    }
    
    if(mouseX > (width / 2) - 500 && mouseX < (width / 2) - 300 && mouseY < 140 && mouseY > 10)
    {
      rect((width / 2) - 440,170,80,25);
      ellipse((width / 2) - 400,140,3,3);
      line((width / 2) - 400,140,(width / 2) - 400,170);
      rect((width / 2) - 440,170,80,25);
      fill(0,255,0);
      text("VENUS",(width / 2) - 435,190);
      
      if(mousePressed && fuel_height > 0)
      {
        background = venusbg;
        globetexture = venustexture;
        planet_name = "Venus";
        planet_pop = "0";
        planet_diam = "12,104 km";
        planet_hab = "0%";
        planet_mass = "4.867×10^24 kg";
        planet_gas1 = "96.5% CO2";
        planet_gas2 = "3.5% Nitrogen";
        planet_gas3 = "";
        gravity = 8.87;
        pressure = 9300;
      }
      else if(mousePressed && fuel_height <= 0)
      {
        no_fuel = 1;
      }
    }
    
    if(mouseX > (width / 2) + 300 && mouseX < (width / 2) + 500 && mouseY < 140 && mouseY > 10)
    {
      rect((width / 2)+360,170,80,25);
      ellipse((width / 2)+400,140,3,3);
      line((width / 2) + 400,140,(width / 2)+400,170);
      fill(0,255,0);
      text("MOON",(width / 2) + 365,190);
      
      if(mousePressed && fuel_height > 0)
      {
        background = moonbg;
        globetexture = moontexture;
        planet_name = "Moon";
        planet_pop = "0";
        planet_diam = "3,474 km";
        planet_hab = "0%";
        planet_mass = "7.348×10^22kg";
        planet_gas1 = "NO ATMOSPHERE";
        planet_gas2 = "";
        planet_gas3 = "";
        gravity = 1.622;
        pressure = 0;
      }
      else if(mousePressed && fuel_height <= 0)
      {
        no_fuel = 1;
      }
    }
    
    if(no_fuel == 1 && frameCount % 60 <= 30)
    {
      textSize(25);
      fill(255,0,0);
      text("PLEASE REFUEL TO TRAVEL",(width / 2) - 150,(height / 2) - 40);
    }
  }
}