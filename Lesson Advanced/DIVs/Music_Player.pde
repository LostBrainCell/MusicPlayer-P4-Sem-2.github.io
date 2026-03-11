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
  void rectButton() {
  }//END RECTBUTTON
  //
  void divsArray() {
    //MAKE/ DEVELOP A FORMULA THROUGH COPY AND PASTE
    //Note: Width=1920 pixels / Height=1080 pixel
    //
    // Music Player template / Rect 1
    divs[0] = appWidth * 1 / 4 ; //How far the rect is from the edge of the full screen WIDTH wise
    divs[1] = appHeight * 1 / 4 ; //How far the rect i from the edge of fullScreen HEIGHT wise
    divs[2] = appWidth * 1/2 ; //Even for Width | x(width) of the inner screen
    divs[3] = appHeight* 1 / 2 ; //Odd for Height | y(height) of inner screen

    float PlayerX = divs[0];
    float PlayerY = divs[1];
    float Xrow = divs[2] / 12; //vertical Separater
    float Yrow = divs[3] / 6.75; //Horizontal Separater
    float HalfRowX = Xrow/2;
    float HalfRowY = Yrow/2;

    //DIVS for X Button
    divs[4] = appWidth-Xrow;
    divs[5] = 0;
    divs[6] = Xrow;
    divs[7] = Yrow;

    //Music Player button
    divs[8] = 0;
    divs[9] = appHeight - 100;
    divs[10] = divs[10] ;
    divs[11] = divs[10];

    // Frame Music Image
    //float Square = Xrow+Yrow;
    divs[12] = PlayerX + HalfRowX;
    divs[13] = PlayerY + Yrow/4;
    divs[14] = Xrow*5;
    divs[15] = Yrow*2 + HalfRowY;
    //Music Buttons start
    divs[16] = PlayerX + HalfRowX ;
    divs[17] = PlayerY + divs[13] - Yrow/3 ;
    divs[18] = Xrow ;
    divs[19] = Yrow ;

    divs[20] = PlayerX + HalfRowX+Xrow ;
    divs[21] = PlayerY + divs[13] - Yrow/3 ;
    divs[22] = Xrow ;
    divs[23] = Yrow ;

    divs[24] = PlayerX + HalfRowX+ 2*Xrow ;
    divs[25] = PlayerY + divs[13] - Yrow/3 ;
    divs[26] = Xrow ;
    divs[27] = Yrow ;

    divs[28] = PlayerX + HalfRowX + 3*Xrow ;
    divs[29] = PlayerY + divs[13] - Yrow/3  ;
    divs[30] = Xrow ;
    divs[31] = Yrow ;

    divs[32] = PlayerX + HalfRowX + 4*Xrow ;
    divs[33] = PlayerY + divs[13] - Yrow/3 ;
    divs[34] = Xrow ;
    divs[35] = Yrow ;
    //End Buttons
    //Begins New Image Point
    divs[36] = divs[12] + divs[14] + Xrow;
    divs[37] = divs[13];
    divs[38] = divs[14];
    divs[39] = divs[15];

    divs[40] = divs[36];
    divs[41] = divs[37] + divs[15] + Yrow/2;
    divs[42] = divs[38];
    divs[43] = divs[39];
    
    //end New Image points

    divs[44] = PlayerX + HalfRowX + Xrow/4 ;
    divs[45] = PlayerY + divs[13] - Yrow/3 + Yrow/4 ;
    divs[46] = Xrow/6 ;
    divs[47] = Yrow/2 ;
    
    divs[48] = divs[44] + Xrow/3;
    divs[49] = PlayerY + divs[13] - Yrow/3 + Yrow/4;
    divs[50] = Xrow/6 ;
    divs[51] = Yrow/2 ;

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
  void RECT(float x, float y, float w, float h) {
    rect( x, y, w, h);
  }//END RECT
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
