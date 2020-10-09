class Ball
{
  float x, y,vx,vy;
  
  Ball() 
  {
    x = width/2;
    y = height/2;
    vx = 3;
    vy = 4;
  }
  
 void show ()
 {
   noStroke();
   fill(255,0,0);
   ellipse(x,y,diamter,diamter);
 }
 void act ()
 {
   x = x + vx;
   y = y + vy;
   
   if (x < diamter/2 || x > width - diamter/2)
   {
     vx = -vx;
   }
   if ( y<diamter/2)
   {
     vy = -vy;
   }
   if(y > height -diamter/2)
   {
     fill(200,20,50);
     textSize(60);
     text("Game Over", width/2 - 170, height/2);
     textSize(20);
     text("Press Space to exit", width/2-100,height/2 + 40);
     
   }
     
   if( dist(ball.x,ball.y,paddle.x,paddle.y) <=80)
   {
     vx = -vx;
     vy = -vy;
     count = count + 1;
     println(count);
   }
    

      
 }
 }
