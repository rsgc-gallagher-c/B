class Player { 

  //Global Variables 
  float topX; //top of triangle X position 
  float topY; //top of triangle Y position 
  float s1;   // set the speed of the movemnet left and right for the player 

  //constructor (like setup - runs once)
  Player (float topX_, float topY_, float s1_) {
    topX = topX_;
    topY = topY_;
    s1 = s1_;
  }

  void update() {

    //Make the colour of the player (triangle) 
    fill(0, 0, 0);

    //Make player (triangle) 

    triangle(topX, topY, topX - 15, topY + 20, topX + 15, topY + 20);

    // Move the player herizontal 
    topX = topX-s1;


    // Move the player vertical  
    topY = topY-1;
  }
  //moving the player with the keys 
  void sets1(float newS1_) {
    s1 = newS1_;
    print("s1 was set");
  }
}