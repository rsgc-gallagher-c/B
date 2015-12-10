//Carlyle Gallagher 
//Game Project 

int m; // Score Seconds
int score; // score
int S; // For the "Press space bar to start game" 
boolean repeat; //The true or false statement to allow to restart my program 


Player P1; //makes new player 
Rectangle R1; //makes new rectangle 

void setup() {

  //Make canvas 
  size(200, 300);

  //Create new player
  P1 = new Player (100, 250);
  
  //Create new Rect 
  R1 = new Rectangle (); 

  //score
  score = 0;
  m = 0;

  //Make S the variable for x cordinent for "Press space to start game"
  S = 5;

  repeat=false;
  noLoop();
}


void draw() {


  // background clears each time the program loops
  background(0);

  //Set colour of the background 
  fill (255);

  //score counter
  m = m+1;
  score = m/60;
  textSize(20);
  text("Score: "+ score, 10, 30);

  //Creating and updateing the player and the rectangle 
  R1.update();
  P1.update();

  //Make the text white and the size 15
  fill(255);
  textSize(15);

  //Text on screen "Press space bar to start game" 
  text("Press Space To Start Game", S, 185);

  //Showing position of the Player 
  fill(255);
  textSize(15);
  text("P Right Edge : "+P1.getRightEdge(), 50, 90);
  text("P Left Edge : "+P1.getLeftEdge(), 50, 110);

  //Showing position of the rectangle 
  textSize(15);
  text("R Right Side : "+R1.getRightSide(), 30, 130);
  text("R Left Side : "+R1.getLeftSide(), 30, 150);

  //End Game on Right side  
  if (P1.getRightEdge() > R1.getRightSide()) {
    textSize(20);
    text("GAME OVER", 10, 50);
    print("Game Over on right side");
    //To reset the game 
    textSize(12);
    text("Press Z then space to reset game", 5, 180);
    noLoop();
  }

  //End game on left side 
  if (P1.getLeftEdge() < R1.getLeftSide()) {
    textSize(20);
    text("GAME OVER", 10, 50);
    print("Game Over on left side");
    //To reset the game
    textSize(12);
    text("Press Z then space to reset game", 5, 180);
    noLoop();
  }

  noStroke();
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

  //Allows for the game to not run unless space bar is pressed
  if (key == ' ') {
    loop();
    //Moves the "Press space bar to start game" off the screen
    S = 700;
  }

  //To reset the game 
  if (key == 'z') {
    
    //Below runs only select parts of what would be in Setup when Z is pressed 
    
    //Create new player
    P1 = new Player (100, 250);
    R1 = new Rectangle (); 

    //score
    score = 0;
    m = 0;

    //Make S the variable for x cordinent for "Press space to start game"
    S = 5;
    repeat=true;
    noLoop();
  }
}


//To make sure that when either the A or D key is released, the player stops moving 
void keyReleased() {
  P1.sets1 (0);
}