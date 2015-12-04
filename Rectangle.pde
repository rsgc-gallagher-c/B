class Rectangle {

  //global variables 
  float x; //X horizontal position of the rect 
  float y; //Y vertial position of the rect 
  float a; 
  float b; 

  //constructor (like setup - runs once)
  Rectangle() { 

    x=75; 
    y=210;
    a=-1;
    b=0;
  }

  void update() {


    //Create the fill of the Rect white 
    fill(255);

    // draw rectangle 
    rect(x, y, 50, 80);

    //Chaning the vertical position of the rect 
    //y=y-1;

    //Changing the horizontal position if the rect 
    x=x+random(a, b);

    //This changes the speed of the rectangle from the left side to the right side
    if (x < 0) {
      a=0;
      b=1.3;
    }

    //This changes the speed of the rectangle from the right side to the left side
    if (x > 150) {
      a=-1.3;
      b=0;
    }
  }

  //Gets the position of the rectangle  
  float getLeftSide() { 
    return x;
  }

  float getRightSide() {
    return x+50;
  }
}