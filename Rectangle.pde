class Rectangle {

  //global variables 
  float x; //X horizontal position 
  float y; //Y vertial position 
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

    //This is here becasue you can't add and subtract in text 
    float t=x+50;

    //Showing position of the Rect 

    textSize(15);
    text("X : "+x, 90, 130);
    text("X +50 : "+t, 90, 150);


    //Chaning the vertical position of the rect 
    //y=y-1;

    //Changing the horizontal position if the rect 
    x=x+random(a, b);

    if (x < 0) {
      a=0;
      b=1.3;
    }
    if (x > 150) {
      a=-1.3;
      b=0;
    }
  }

  //Gets the position of the rectangle  
  float getLeftSide() { 
    return x;
  }
}