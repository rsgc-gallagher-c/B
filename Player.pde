class Player { 

  //Global Variables 
  float t; //top of triangle 
  float r; //right of triangle 
  float l; // left of triangle 
  float s1; //speed of the triangle 
  float w; //move the triangle up
  float s2; //speed of the vertical movement 

  //constructor (like setup - runs once)
  Player (float t_, float r_, float l_, float w_) {
    t = t_;
    r = r_;
    l = l_;
    w = w_;
    s1 = 0;
    s2 = 2;
  }

  void update() {

    //Make the colour of the player (triangle) 
    fill(0, 0, 0);

    //Make player (triangle) 
    
    triangle(t, 270, r, 280, l, 280);

    // Move the player 
    t = t-s1;
    r = r-s1;
    l = l-s1;

    // Move the player up 
    w = w-s2; 
    
    ////end game 
    //if (l==80) {
    //  fill(255);
    //  textSize(20);
    //  text("GAME OVER", 10, 30);
    //  noLoop();
    //}


    //if (r==120) {
    //  fill(225);
    //  textSize(20);
    //  text("GAME OVER", 10, 30);
    //  noLoop();
    //}
  }
  //moving the player with the keys 
  void sets1(float newS1_) {
    s1 = newS1_;
    print("s1 was set");
  }
  
  //moving the player with the keys 
  void sets2(float newS2_) {
    s2 = newS2_;
    print("s2 was set");
  }
}