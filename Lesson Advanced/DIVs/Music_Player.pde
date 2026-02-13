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
    this.divs =  new float[numberOfRectangles*4];
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
    
    divs[0] = appWidth * 1 / 16; //How far the rect is from the edge of the full screen WIDTH wise
    divs[1] = appHeight * 1 / 8 ; //How far the rect i from the edge of fullScreen HEIGHT wise
    divs[2] = appWidth * .42; //Even for Width | x(width) of the inner screen
    divs[3] = appHeight* 1 / 2 ; //Odd for Height | y(height) of inner screen
    
    //DIVS for Button
    //divs[]
    //divs[]
    
    
    divs[4] = appWidth * 1 / 16 ; //Even for Width 25% of displayWidth
    divs[5] = appHeight * 1 / 8 ; //Odd for Height 25% of displayHeight
    divs[6] = appWidth * 0.42 ; //Even for Width | x(width) of the inner screen (48%)
    divs[7] = appHeight * 16 / 44 ; //Odd for Height | y(height) of inner screen (36.5%)
    
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
    rectButton(divs[4], divs[5], divs[6], divs[7]);
    RECT(divs[0], divs[1], divs[2], divs[3]);
    //
    for ( int i=0; i<divs.length; i+=4 ) {
      RECT(divs[i], divs[i+1], divs[i+2], divs[i+3]);
      rectButton(divs[i], divs[i+1], divs[i+2], divs[i+3]);
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
