class Rectangle {

  //global variables 
  float x; //X horizontal position 
  float y; //Y vertial position 

  //constructor (like setup - runs once)
  Rectangle() { 

    x=75; 
    y=210;
  }

  void update() {

    //Create the fill of the Rect white 
    fill(255);

    // draw rectangle 
    rect(x, y, 50, 80);

    //Chaning the vertical position of the rect 
    //y=y-1;
    
    //Changing the horizontal position if the rect 
    x=x-random(0, 5);
  }
}