class Cockpit_outline
{
  void render()
  {
    stroke(200);
    strokeWeight(1);
    fill(44,45,45);
     
    beginShape();
    vertex(0,0);
    vertex(0,200);
    vertex(200,150);
    vertex(width - 200,150);
    vertex(width,0);
    endShape();
     
    beginShape();
    vertex(width,height);
    vertex(width,height -200);
    vertex(width - 200,height - 150);
    vertex(200,height - 150);
    vertex(0,height);
    endShape();
     
    stroke(200,0,0);
    line(0,210,200,160);
    line(200,160,width -200,160);
    line(width-200,160,width,10);
     
    line(width,height-210,width-210,height-160);
    line(width-210,height-160,200,height-160);
    line(200,height-160,0,height-10);
  }
}