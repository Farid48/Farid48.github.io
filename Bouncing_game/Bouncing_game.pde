int brickw = 50;
int brickh = 20;
int NoBrickRow =10;
float diamter = 20;
float paddlew = 100;
float paddleh = 20;
int count = 0;
Ball ball; 
Paddle paddle;
brick [] Bricks =new brick[0];
boolean restart = false;




void setup()
{
  stroke(255,0,0);
  size(500,500);
  ball = new Ball();
  paddle = new Paddle();
}
  //for( int i = 0; i<NoBrickRow; i = i + 1)
  //  {
  //    int y = brickh/2 + i*brickh;
  //    int offset = 0;
  //    if ( i%2 == 0)
  //    {
  //      offset = brickw/2;
  //    }
  //    for (int j = offset; j<width+brickw/2; j = j +brickw)
  //    {
  //      Bricks = (brick[]) append (Bricks, new brick(j, y));
  //    }
  //  }
  //}

  
  

void draw()

{
   
  background(255); 
  
  paddle.show();
   if(key == 'd' || key == 'a')
  {
    play();
    ball.show();
    ball.act();
    fill(255,0,255);
    textSize(20);
    text("Points:"+ count, width - 120, height/13);
  }
  else
  {
    fill(0,255,0);
    textSize(30);
    text("Pause",width/2-50,width/2);
  }
  
  
  if( ball.y > height-diamter && key ==' ')
  {
    restart=true;
    ball.x=width/2;
    ball.y=width/2;
    count = 0;
  }

  
  //if( ball.y >= height+100 && key ==' ')
  //{
  
  //}
 
  
  for( int i = 0; i<Bricks.length; i = i + 1)
  {
    if(Bricks[i] != null)
    {
      Bricks[i].draw();
    }
  }
    for(int i = 0; i < Bricks.length; i = i +1)
  {
    if(Bricks[i] != null && Bricks[i].impact(ball) == true)
    {
      ball.vy = -ball.vy;
      Bricks[i] = null;
    }
  }
}






    
    
    
  
