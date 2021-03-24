
float x = 0;
float y = 150;

float w = 20;
float h = 20;

float xspeed = 5;
float yspeed = 5;


float r = 255;
float g = 255;
float b = 255;

float xoff = 1000;

void setup(){
  size(850,900);
  surface.setTitle("_");
  surface.setLocation(0,0);
  background(0);

}

void draw(){
  background(0);
  //x = x + xspeed;
  //y = y + yspeed;
  x = width/2;
  y = height/2;

  if ((x > width-w) || (x < 0)){
    xspeed = xspeed * -1;
    r = randomGaussian()*150+175;
    g = randomGaussian()*150+175;
    b = randomGaussian()*150+175;
  }

  if (( y > height-h) || (y < 0)){
    yspeed = yspeed * -1;
    r = randomGaussian()*150+175;
    g = randomGaussian()*150+175;
    b = randomGaussian()*150+175;
  }
  
  stroke(255);
  fill(r,g,b);  
  rect(x, y, w, h);

  xoff = xoff + .01;
  float n = noise(xoff) * width;
  line(n, 0, n, height);
  
}
