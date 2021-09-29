int startX = 0;
int startY = 150;
int endX = 0;
int endY = 0;

void setup()
{
  size(300,300);
  background(0);
  strokeWeight(4);
}
void draw()
{
  noStroke();
  fill(0,0,0);
  rect(0,0,300,300);
 
  
  for(int x = 10; x < 350; x+= 50) {
    fill(255);
    noStroke();
    ellipse(x,10,80,70);
  }
    
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    while(endX < 300) {
    endX = startX + (int)(Math.random()*9);
    endY = startY + (int)(Math.random()*40-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    }
    
  }
void mousePressed()
{
  startX = mouseX;
  startY = 0;
  endX = 0;
  endY = 0;

}


