class Paddle 
{
  float x;
  float y;
  float vx;
  float vy;
  float d;
  float radius;
  
  
  Paddle()
  {
    x = width/2;
    y = height;
    vx = 7;
    vy = 7;
    radius = 150;
  }
  
  void show()
  {
    noStroke();
    fill(10,10,150);
    circle(x,y,radius);
  }
  
  void act()
  {
    if(key == 'd' && x <=width)
    {
      x = x + vx;
    }
    if(key =='a' && x >= 0)
    {
      x = x -vx;
    }
    
  }
    
}
