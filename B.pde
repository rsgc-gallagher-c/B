//Carlyle Gallagher 
//Game Project 
float oldX;  // starting X of current segment
float oldY;  // starting Y of current segment
float newX;  // ending X of current segment
float newY;  // ending Y of current segment


float xChange;  // change for horizontal
float yChange;  // change for horizontal

Player P1; //makes new player 

void setup() {

  //Make canvas 
  size(200, 300);

  // initial starting point for wall
  oldX = 40;
  oldY = 50;

  // initial ending point for wall
  newX = 80;
  newY = 10;


  //Create new player
  P1 = new Player (100, 108, 92);
}

void draw() {

  // background clears each time the program loops
  background(0);

  //Create hallway 
  fill(255);

  noStroke();

  rect(80, 250, 40, 50);

  // draw wall segment using
  rect(oldX, oldY, newX, newY);

  // make "new" or ending point become the starting point
  oldX = newX;
  oldY = newY;

  // generate a horizontal change
  xChange = random(0, 0);                       //make to 10 later 

  // generate a vertical change
  yChange = random(10, 10);

  // assign new ending points
  newX = newX + xChange;
  newY = newY + yChange;

  P1.update();
}

//respond to key pressed 
void keyPressed() {

  if (key == 'a') {
    print("a was pressed");
    P1.sets1 (+1);
  }
  if (key == 'd') {
    print("d was pressed");
    P1.sets1 (-1);
  }
}

void keyReleased() {
  P1.sets1 (0);
}