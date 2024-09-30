int startX = 500;
int startY = 0;
int endX = 500;
int endY = 0;

void setup()
{
  background(0);
  size(1000,1000);
  strokeWeight(3);
  frameRate(10);
}

int opacity = 255;
int cloudColor = 255;

void draw()
{
  background(0);
  //lightning
  while (endY < 1000){
  int color1 = (int)(Math.random()*255);
  int color2 = (int)(Math.random()*255);
  int color3 = (int)(Math.random()*255);
    fill(color1, color2, color3);
    stroke(color1, color2, color3, opacity);
    endX = startX + (int)(Math.random()*17) - 8;
    endY = startY + (int)(Math.random()* 8);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    noStroke();
  }
  rect(0, 800, 1000, 1000);
  while(opacity > 255){
    opacity -= 1;
  }
  //cloud

  fill(cloudColor);
  ellipse(500, 0, 75, 50);
  ellipse(560, 20, 75, 50);
  ellipse(440, 20, 75, 50);
  ellipse(520, 45, 75, 50);
  ellipse(480, 45, 75, 50);
  fill(255);
  cloudColor = 255;
}

void mousePressed(){
  startX = 500;
  startY = 0;
  endX = 500;
  endY = 0;
  cloudColor = 100;
{

  }
}


