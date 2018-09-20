
void setup()
{
	strokeWeight(5);
	background(0);
  size(1000,1000);
}
void draw()
{
if (ANumber == 0){
int startX = 0;
int startY = 500;
int endX = 0;
int endY = 500;
stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
while (endX <= 1000){
	endX = startX + ((int)(Math.random()*19)-9);
	endY = startY + ((int)(Math.random()*9));
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
}
if (endX >= 1000){
	startX = 0;
	startY = 0;
	endX = 0;
	endY = 0;
}
}

	}




