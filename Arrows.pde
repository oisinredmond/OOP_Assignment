class Arrows
{
  void display()
  {
    stroke(255,0,0);
    strokeWeight(2);
    if(frameCount%30<=10)
    {
      fill(0,200,255);
    }else{noFill();}
    
    beginShape();
    vertex(width/2,height-220);
    vertex(width/2-150,height-200);
    vertex(width/2 -130,height-220);
    vertex(width/2,height-240);
    vertex(width/2+150,height-220);
    vertex(width/2 +170, height-200);
    endShape(CLOSE);
    
    if(frameCount%30<=20 && frameCount%30>10)
    {
      fill(0,200,255);
    }
    else{noFill();}

    beginShape();
    vertex(width/2,height-260);
    vertex(width/2-110,height-245);
    vertex(width/2 -100,height-260);
    vertex(width/2,height-275);
    vertex(width/2+110,height-260);
    vertex(width/2 +120, height-245);
    endShape(CLOSE);
   
   if(frameCount%30<=29 && frameCount%30>20)
    {
      fill(0,200,255);
    }
    else{noFill();}
    beginShape();
    vertex(width/2,height-300);
    vertex(width/2-90,height-285);
    vertex(width/2 -80,height-300);
    vertex(width/2,height-315);
    vertex(width/2+90,height-300);
    vertex(width/2 +100, height-285);
    endShape(CLOSE);
  }
}