class Buttons {
  /* Notes
   -
   -
   -
   -
   */
  //Global Variables
  int randomButtonY, randomButtonDimension, MusicPlayerX, MusicPlayerY, MusicPlayerWidth, MusicPlayerHeight, ButtonSize, numberOfButtons=10 ;
  float[] musicButtonDivX = new float[numberOfButtons];

  //
  //
  void MusicButtonDivs() {
    MusicPlayerX = appWidth/4;
    MusicPlayerY = appHeight/4;
    MusicPlayerWidth = appWidth*1/2;
    MusicPlayerHeight = appHeight*1/2;
    ButtonSize = MusicPlayerWidth*1/13 ; // number of buttons in a row + 2xPadding and the square itself
    int randomButtonX = 0;
    // Separater
    }
  }//
  //
  void drawMusicDivs( float x, float y, float d) {
    square( x, y, d );
  }//
  void drawMusicDivs( float[] x, float y, float d) {
    for ( int i=1; i<musicButtonDivX.length; i++ ) {
      square( x[i], y, d );
    }
  }//
  void  musicSymbol( int index, float divX, float divY, float divDimension ) {
    divX = divX + divDimension*1/4;
    divY = divY + divDimension*1/4;
    divDimension = divDimension*1/2;
    //
    if ( index==1 || index==2 || index==7 || index==8 ) {
      if ( index==1 || index==2 || index==7 || index==8 ) drawMusicDivs( divX, divY, divDimension ); // Squares inside buttons
      if ( index==7 || index==8 ) {
        WideTriangle( 9, divX+SmallerDimensionValue( divDimension*7/4 ), divY-divDimension*1/8, divDimension/4);
      }
    }
    //
    if ( index==2 ) drawLines( divX, divY, divDimension ); //Lines
    //
    if ( index==3 ) { //Rectangle
      float rectWidth = divDimension/4;   // Narrow width for the vertical rectangles
      float rectHeight = divDimension;    // Full height of the button
      rect(divX, divY, rectWidth, rectHeight);
    }//
    // Pause Button Dimensions
    if ( index==4 ) {
      if (index == 4) { // Pause Button
        float rectWidth = divDimension/3;   // Narrow width for the vertical rectangles
        float RectSpace = divX+rectWidth*2; // Spacing between the two rectangles
        float rectHeight = divDimension;    // Full height of the button
        rect(divX, divY, rectWidth, rectHeight);
        // 2nd Vertical Rectangle
        rect(RectSpace, divY, rectWidth, rectHeight);
      }
    }
    if ( index==5 ) WideTriangle( 5, divX, divY, divDimension );
    if ( index==6 ) {
      divX = divX-divDimension/4 + SmallerDimensionValue( divDimension/2 );
      HalvedWidthTriangleRight ( 4, divX+divDimension*1/10, divY, divDimension );
      HalvedWidthTriangleRight ( 4, divX+divDimension*3/7, divY, divDimension );
      float rectWidth = divDimension/4;   // Narrow width for the vertical rectangles
      float rectHeight = divDimension;    // Full height of the button
      rect(divX+divDimension*.77, divY, rectWidth, rectHeight);
    }///
    if ( index==7 || index==8 ) {
      divX = SmallerDimensionValue( divX, divDimension );
      divY = SmallerDimensionValue( divY, divDimension );
      divDimension = SmallerDimensionValue( divDimension );
    }
    if ( index==7 ) {
      drawMusicDivs( divX, divY, divDimension );
    }
    //
    if ( index==9 ) { // triangles facing left
      if ( index==9 ) {
        divX = divX+divDimension/4 + SmallerDimensionValue( divDimension/2 );
        HalvedWidthTriangleLeft ( 9, divX+divDimension*1/10, divY, divDimension );
        HalvedWidthTriangleLeft ( 9, divX+divDimension*3/7, divY, divDimension );
        //divDimension = divDimension-SmallerDimensionValue( divDimension ); only makes the triangle size smaller, not narrower
        //place holder for small triangles in the loop button
      }
    }
    //
  }//
  float SmallerDimensionValue( float divXY, float divDimension ) {
    return divXY = divXY + divDimension*1/4;
  }//
  //
  float SmallerDimensionValue( float divDimension ) {
    return divDimension = divDimension*1/2;
  }//
  //
  void drawLines( float divX, float divY, float divDimension ) {
    line( divX, divY, divX+divDimension, divY+divDimension ); //Line from top left to bottom right
    line( divX+divDimension, divY, divX, divY+divDimension ); //Line from top bottom left to top right
  }//
  void WideTriangle( int index, float divX, float divY, float divDimension ) {
    triangle( divX, divY, divX+divDimension, divY+SmallerDimensionValue( divDimension ), divX, divY+divDimension );
  }//
  void HalvedWidthTriangleLeft( int index, float divX, float divY, float divDimension ) {
    triangle( divX, divY, divX-divDimension/3, divY+SmallerDimensionValue( divDimension ), divX, divY+divDimension ); // divX-divDimension to make triangles face left
  }//
  void HalvedWidthTriangleRight( int index, float divX, float divY, float divDimension ) {
    triangle( divX, divY, divX+divDimension/3, divY+SmallerDimensionValue( divDimension ), divX, divY+divDimension ); // divX-divDimension to make triangles face left
  }//
  //void smallTriangle ( int index, float divX, float divY, float divDimension ) {
  //  //triangle( divX, divY,
  //}//
}
