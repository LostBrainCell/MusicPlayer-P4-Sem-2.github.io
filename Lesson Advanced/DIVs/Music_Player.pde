class MusicPlayer {
  //
  //Global Variables
  float[] divs;
  //
  //Constructor And Multiple Constructors (different parameters)
  MusicPlayer () {
  }//Constructor
  //
  //
  MusicPlayer (int numberOfRectangles ) {
    this.divs =  new float[numberOfRectangles*32];
  }//Constructorct
  //
  void draw() {
    errorStatement("hello twin");
    //println("hello world type shi");
  }//END DRAW
  //
  void RECT(float x, float y, float w, float h) {
    rect( x, y, w, h);
  }//END RECT
  void rectButton() {
  }//END RECTBUTTON
  //
  void divsArray() {
    //MAKE/ DEVELOP A FORMULA THROUGH COPY AND PASTE
    //Note: Width=1920 pixels / Height=1080 pixel
    //
    // Music Player template
    divs[0] = appWidth * 1 / 4; //How far the rect is from the edge of the full screen WIDTH wise
    divs[1] = appHeight * 1 / 4 ; //How far the rect i from the edge of fullScreen HEIGHT wise
    divs[2] = appWidth * 1/2 ; //Even for Width | x(width) of the inner screen
    divs[3] = appHeight* 1 / 2 ; //Odd for Height | y(height) of inner screen
    //
    divs[4] = divs[0] ;
    divs[5] = divs[1] ;
    float Xrow = divs[2] / 10;
    float Yrow = divs[3] / 5.625;
    divs[6] = Xrow ;
    divs[7] = Yrow ;

    //DIVS for X Button
    divs[8] = appWidth-100;
    divs[9] = 0;
    divs[10] = 100 ;
    divs[11] = divs[10];
    
    //Music Player button
    divs[12] = 0;
    divs[13] = appHeight - 100;
    divs[14] = divs[10] ;
    divs[15] = divs[10];

    /*
    divs[4] = ;
     divs[5] = ;
     divs[6] = ;
     divs[7] = ;
     
     divs[8] = ;
     divs[9] = ;
     divs[10] = ;
     divs[11] = ;
     */
    //END with for( int i=0, i  <divs.length; =i+=4 )
    //printArray(divs);
    //
    //rectButton(divs[4], divs[5], divs[6], divs[7]);
    RECT(divs[0], divs[1], divs[2], divs[3]);
    //
    for ( int i=0; i<divs.length; i+=4 ) {
      RECT(divs[i], divs[i+1], divs[i+2], divs[i+3]);
      //rectButton(divs[i], divs[i+1], divs[i+2], divs[i+3]);
    }
  }//END DIVS ARRAY
  //
  //Functions
  //
  //Getters
  //
  //Setters
  //
  //Output - Println
  void errorStatement( String description ) {
    println(description);
  }// END HELLOWORLD
  void errorStatement( String description, float variable) {
    println(description, variable);
  }// END HELLOWORLD
  //
  //
}//End Music Player Class
