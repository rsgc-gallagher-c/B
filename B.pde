//Carlyle Gallagher 
//Game Project 

int m; // Score Seconds
int score; // score


Player P1; //makes new player 
Rectangle R1; //makes new rectangle 

void setup() {

  //Make canvas 
  size(200, 300);

  //Create new player
  P1 = new Player (100, 250);
  R1 = new Rectangle (); 

  //score
  score = 0;
  m = 0;
}

void draw() {


  // background clears each time the program loops
  background(0);



  fill (255);

  //To see where the points are 
  println(P1.getv());
  println(P1.getu());
  println(R1.getx());
  println(R1.getx()+50);


  //score counter
  m = m+1;
  score = m/60;
  textSize(20);
  text("Score: "+ score, 10, 30);

  //End Game on left side  
  if (P1.getv() < R1.getx()) {
    textSize(20);
    text("GAME OVER", 10, 50);
    noLoop();
  }

  //End game on right side 
  if (P1.getu() > R1.getx() + 50);  
  {
    textSize(20);
    text("GAME OVER", 10, 50);
    noLoop();
  }

  noStroke();

  R1.update();
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