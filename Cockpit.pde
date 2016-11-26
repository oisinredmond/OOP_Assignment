class Cockpit
{
  void render()
  {
    stroke(200);
    strokeWeight(3);
    fill(0,30,80);
     
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
    
    if(begin==0)
    {
      textAlign(CENTER);
      textSize(50);
      stroke(100);
      fill(0,30,80);
      rect(width/2-100,height/2+50,200,60);
      fill(0,200,0);
      text("SPACE TRAVEL SIMULATOR 2016",width/2,height/2);
      text("BEGIN",width/2,height/2+100);
      
      if(mousePressed && mouseX > width/2-100 && mouseX < width/2 + 100 && mouseY > height/2 + 50 && mouseY < height/2 + 110)
      {
        begin = 1;
      }
    }
  }
}