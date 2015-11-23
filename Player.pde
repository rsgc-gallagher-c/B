class Player { 

  //Global Variables 
  float topX; //top of triangle X position 
  float topY; //top of triangle Y position 
 

  //constructor (like setup - runs once)
  Player (float topX_, float topY_) {
    topX = topX_;
    topY = topY_;
    
  }

  void update() {

    //Make the colour of the player (triangle) 
    fill(0, 0, 0);

    //Make player (triangle) 
    
    triangle(topX, topY, topX - 20, topY + 25, topX + 20, topY + 25);

    //// Move the player 
    //t = t-s1;
    //r = r-s1;
    //l = l-s1;

    //// Move the player up 
    //w = w-s2; 
    
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
  ////moving the player with the keys 
  //void sets1(float newS1_) {
  //  s1 = newS1_;
  //  print("s1 was set");
  //}
  
  ////moving the player with the keys up and down 
  //void sets2(float newS2_) {
  //  s2 = newS2_;
  //  print("s2 was set");
  //}
}