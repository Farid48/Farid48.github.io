class brick
{
  float x;
  float y;
  
  brick(float x1, float y2)
  {
    x =x1;
    y = y2;
    
  }
  void draw()
  {
    stroke(255,0,0);
    rectMode(CENTER);
    fill(#06BAC9);
    rect(x, y ,brickw, brickh);
    
   
  }
   boolean impact(Ball a) 
    { 
    if (x - brickw/2 < a.x && a.x <  + brickw/2 &&
        y + brickh/2 > a.y-diamter/2)
        {
          return true;
        }
      else{
          return false;
      }
  }
  
  
}
