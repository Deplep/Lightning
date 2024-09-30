int startX = 400;
int startY = 0;
int endX = 400;
int endY = 0;

void setup()
{
  background(0);
  size(800,800);
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
  rect(0, 600, 800, 800);
  while(opacity > 255){
    opacity -= 1;
  }
  //cloud

  fill(cloudColor);
  ellipse(400, 0, 75, 50);
  ellipse(460, 20, 75, 50);
  ellipse(340, 20, 75, 50);
  ellipse(420, 45, 75, 50);
  ellipse(380, 45, 75, 50);
  fill(255);
  cloudColor = 255;
}

void mousePressed(){
  startX = 400;
  startY = 0;
  endX = 400;
  endY = 0;
  cloudColor = 100;
{

  }
}


