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
    //int a = 4; //Place holder variable for now, work tomorrow
    float PlayerX = divs[0];
    float PlayerY = divs[1];
    float Xrow = divs[2] / 10;
    float Yrow = divs[3] / 5.625;
    float button = Xrow + Yrow; //Temporary
    float ImageX = PlayerX + Xrow;
    float ImageY = PlayerY + Yrow;
    float ImageW = 4*Xrow;
    float ImageH = 3*Yrow;
    float Xrow2 = Xrow*2;
    float Xrow3 = Xrow2+Xrow;
    float Xrow4 = Xrow3+Xrow;
    float YrowButtons = ImageY + Yrow;
    //
    //divs[a] = button ;

    for ( int a=4; a<divs.length; a++ ) {
      if ( a%4==0 && int (a/4)==0 ) {
        divs[a] = appWidth*1/4;
      } else if ( a%4==0 && int (a/4)==1 ) {
        
      } else if ( a%4==0 && int (a/4)==2 ) {
      } else if ( a%4==0 && int (a/4)==3 ) {
      } else if ( a%4==0 && int (a/4)==0 ) {
      } else if ( a%4==0 && int (a/4)==0 ) {
      } else if ( a%4==0 && int (a/4)==0 ) {
      }
    } // Work In Progress


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
