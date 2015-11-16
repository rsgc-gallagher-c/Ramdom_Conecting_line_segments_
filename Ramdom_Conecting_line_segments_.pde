// holds start and end of wall segment in current frame
float oldX;  // starting X of current segment
float oldY;  // starting Y of current segment
float newX;  // ending X of current segment
float newY;  // ending Y of current segment

float xChange;  // change for horizontal
float yChange;  // change for horizontal


void setup() {
  
  // create canvas
  size(600, 300);
  
  // initial starting point for wall
  oldX = 0;
  oldY = 100;
  
  // initial ending point for wall
  newX = 150;
  newY = 100;
  
  // slow it down
  frameRate(1);
  
}

void draw() {
  
  // draw wall segment using
  line(oldX, oldY, newX, newY);
    
  // make "new" or ending point become the starting point
  oldX = newX;
  oldY = newY;
  
  // generate a horizontal change
  xChange = random(0, 30);
  
  // generate a vertical change
  yChange = random(0, 30);
  
  // assign new ending points
  newX = newX + xChange;
  newY = newY + yChange;
  
}