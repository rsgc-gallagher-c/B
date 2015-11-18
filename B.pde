//Carlyle Gallagher 
//Game Project 

Player P1; //makes new player 
Rectangle R1; //makes new rectangle 

void setup() {

  //Make canvas 
  size(200, 300);

  //Create new player
  P1 = new Player (100, 108, 92, -10);
  R1 = new Rectangle (oldX, oldY, newX, newY); 

  //slow down the rectangle 
  //frameRate(1);
}

void draw() {

  // background clears each time the program loops
  background(0);

  //Create hallway 
  fill(255);

  noStroke();

  P1.update();
  R1.update(); 
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

  if (key == 'w') { 
    print("w was pressed");
    P1.sets2 (-10);
  }
}

void keyReleased() {
  P1.sets1 (0);
}