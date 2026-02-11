class MusicPlayer {
  //
  //Global Variables
  //
  //Constructor And Multiple Constructors (different parameters)
  MusicPlayer () {
  }//Constructor
  //

  MusicPlayer (int numberOfRectangles ) {
    this.divs =  new float[numberOfRectangles];
  }//Constructorct

  void draw() {
    errorStatement("hello twin");
    //println("hello world type shi");
  }//END DRAW
  //
  void rect(float x, float y, float w, float h) {
    rect( x, y, w, h);
  }//END RECT
  //
  void divsarray() {
    //MAKE/ DEVELOP A FORMULA THROUGH COPY AND PASTE
    //END with for( int i=0, i  <divs.length; =i+=4 )
    printArray(divsarray);
    for ( int i=0; i<divs.length; i+=4 ) {
      rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
    }//END DIVS ARRAY
    //
    //Functions
    //
    //Getters
    //
    //Setters
    //
    //Output - Println
    void errorStatement(String description) {
      println(description);
    }// END HELLOWORLD
    void errorStatement(String description, float variable) {
      println(description, variable);
    }// END HELLOWORLD
    //
    //
  }//End Music Player Class
