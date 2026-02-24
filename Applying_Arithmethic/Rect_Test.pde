class rectTest {

  float[] divs;

  rectTest (int ArrayDIVCount) {
    //
    this.divs = new float[ArrayDIVCount*64];
  }// end variables

  void divsArraySETUP() {
    divs[0] = appWidth*1/4 ;
    divs[1] = appHeight*1/4;
    divs[2] = appWidth*1/2;
    divs[3] = appHeight*1/2;

    //Variables for Rectangles Within the Music player UI
    //float ;



    //Flow Chart Arithmethic
    int a = 4; //Place holder variable for now, work tomorrow
    float Xrow = divs[2] / 10;
    float Yrow = divs[3] / 5.625;
    float button = Xrow + Yrow;
    
    
    divs[a] = button ;
    
    
    //i++;
    //divs[a] = ; //


    //RECT(divs[0], divs[1], divs[2], divs[3]); Shelf this for now
    //
    for ( int i=0; i<divs.length; i+=4 ) {
      RECT(divs[i], divs[i+1], divs[i+2], divs[i+3]);
      //rectButton(divs[i], divs[i+1], divs[i+2], divs[i+3]);
    }
  }//

  void RECT(float x, float y, float w, float h) {
    rect( x, y, w, h);
  }//
}// End Class
