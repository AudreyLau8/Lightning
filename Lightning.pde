int startX = 145;
int startY = 200;
int endX = 145;
int endY = 150;

void setup()
{
  size(300,500);
  background(0,0,0);
}

void draw()
{
  //head
  noStroke();
  fill(150,100,100);
  ellipse(150, 55, 55,55);
  fill(255,255,255);
  ellipse(150, 75, 50,50);
  rect(146, 70, 8, 65);
  fill(150,100,100);
  ellipse(135, 70, 5, 5);
  ellipse(165, 70, 5, 5);
  rect(135, 50, 30, 10);
  
  //bust
  fill(255,60,50);
  beginShape();
  vertex(115, 120);
  vertex(185, 120);
  vertex(185, 150);
  vertex(155, 200);
  vertex(145, 200);
  vertex(115, 150);
  endShape();
  arc(150, 115, 20, 10, 0, PI);
  arc(150, 85, 20, 10, 0, PI);
  
  //arms + neck
  fill(255,255,255);
  beginShape();
  vertex(185,120);
  vertex(200, 200);
  vertex(185, 150);
  endShape();
  beginShape();
  vertex(115,120);
  vertex(100, 200);
  vertex(115, 150);
  endShape();
  arc(150, 120, 60, 40, 0, PI);
  
  //gown
  while(endX<300){
    endX = startX + (int)(Math.random()*39-19);
    endY = startY + (int)(Math.random()*19);
    strokeWeight(10);
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    line(startX, startY, endX, endY);
    strokeWeight(3);
    stroke(255,255,255);
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}

void mousePressed()
{
  startX=145;
  startY=200;
  endX=145;
  endY=200;
}
