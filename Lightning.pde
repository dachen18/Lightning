int startX = 65;
int startY = 520;
int endX = 65;
int endY = 520;
int Skittles = 0;
void setup()
{
  frameRate(30);
  strokeWeight(5);
  background(0);
  size(1000,750);
  
}
void mouseClicked()
{
  Skittles = 1;
}
void draw()
{
  background(0);
  textSize(20);
  fill(255);
  text("Click to see what happens ;)", 300,500);
  if (Skittles == 1)
  {
    LiterallyEverything();
  }
}
void Face()
{
    rotate(-PI/340);
   fill(255);
   arc(50,530,100,100,0,TWO_PI - PI/3,int(PI));
 }
 void Eyes()
 {
   noStroke();
   fill(0);
  ellipse(44,499,15,15);
 }
 void Text()
 {
   textSize(50);
   fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   text("Eat The Rainbow",350,650);
   text("Taste The Rainbow",350,750);
 }
 void LiterallyEverything()
 {
   background(0);
  Face();
  Eyes();
  Text();
stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
while (endX <= 1000){
  endX = startX + ((int)(Math.random()*9));
  endY = startY - ((int)(Math.random()*19)-6);
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
}
if (endX >= 1000){
  startX = 50;
  startY = 530;
  endX = 50;
  endY = 530;
}
} 