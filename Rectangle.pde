class Rectangle {

  //global variables 
  float oldX;  // starting X of current segment
  float oldY;  // starting Y of current segment
  float newX;  // ending X of current segment
  float newY;  // ending Y of current segment


  float xChange;  // change for horizontal
  float yChange;  // change for horizontal
  
  //constructor (like setup - runs once)
  Rectangle(){ 
  
  
  // initial starting point for wall
  oldX = 80;
  oldY = 250;

  // initial ending point for wall
  newX = 70;
  newY = 200;
  }
  
  void update(){
  
     // draw wall segment using
  rect(oldX, oldY, newX, newY);

  // make "new" or ending point become the starting point
  oldX = newX;
  oldY = newY;

  // generate a horizontal change
  //xChange = random(0,0);                      

  // generate a vertical change
  yChange = random(-10, -20);

  // assign new ending points
  newX = newX + xChange;
  newY = newY + yChange;
  println(newY);
  
  }
  
}