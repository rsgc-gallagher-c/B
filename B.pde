//Carlyle Gallagher 
//Game Project 

Player P1; //makes new player 


void setup() {

  //Make canvas 
  size(200, 300);

  //Create new player
  P1 = new Player (100, 108, 92);
}

void draw() {

  // background clears each time the program loops
  background(0);

  //Create hallway 
  fill(255);

  rect(80, 250, 40, 50);
  
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