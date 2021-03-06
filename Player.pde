class Player { 

  //Global Variables 
  float topX; //top of triangle X position 
  float topY; //top of triangle Y position 
  float s1;   // set the speed of the movemnet left and right for the player 
  float rightEdge;   // The right edge of my player 
  float leftEdge;   //This left edge of my player  

  //constructor (like setup - runs once)
  Player (float topX_, float topY_) {
    topX = topX_;
    topY = topY_;
  }

  void update() {


    //Make the colour of the player (triangle) 
    fill(0, 0, 0);

    //Make player (triangle) 

    triangle(topX, topY, topX - 12, topY + 17, topX + 12, topY + 17);

    //Move the player herizontal 
    topX = topX-s1;

    //To make code more readable 
    rightEdge=topX+12;
    leftEdge=topX-12;

    // Move the player vertical  
    //topY = topY-1;
  }

  //Gets the position of the triangle 
  float gettopX() { 
    return topX;
  }
  float getRightEdge() {
    return rightEdge;
  }
  float getLeftEdge() {
    return leftEdge;
  }

  //Take the speed from the main program and sending it to the player class 
  void sets1(float newS1_) {
    s1 = newS1_;
    print("s1 was set");
  }
}