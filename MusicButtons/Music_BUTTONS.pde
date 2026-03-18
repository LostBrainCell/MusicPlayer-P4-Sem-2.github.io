/* Notes
 -
 -
 -
 -
 */
//Global Variables
int randomButtonY, randomButtonDimension, buttonY, buttonWidth, numberOfButtons=12 ;
float[] musicButtonDivX = new float[numberOfButtons];

//
//
void DivPOPULATION() {
  buttonWidth = appWidth/13 ; // number of buttons in a row + 2xPadding and the square itself
  buttonY = appHeight*3/5 ; //Most Buttons
  int randomButtonX = 0;
  randomButtonY = 0;
  randomButtonDimension = appHeight*1/20; //change to square
  musicButtonDivX[0] = randomButtonX;
  // Separater
  for ( int i=1; i<musicButtonDivX.length; i++ ) {
    musicButtonDivX[i]  = buttonWidth*i;
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
      float Node2x = divX + divDimension;
      divX = Node2x - divDimension*1/8;
      divY = divY - divDimension*1/8;
      divDimension = DimensionValue( divDimension );
    }
  }
  if ( index==2 ) drawLines( divX, divY, divDimension ); //Lines
  if ( index==4 ) {
    divX = divDimension*1/3;
    divY = divDimension*1/3;
    divDimension = DimensionValue( divDimension*1/2 );
    drawMusicDivs( divX, divY, divDimension );
  }
  if ( index==5 ) WideTriangle( 5, divX, divY, divDimension );
  if ( index==7 || index==8 ) {
    divX = DimensionValue( divX, divDimension );
    divY = DimensionValue( divY, divDimension );
    divDimension = DimensionValue( divDimension );
    drawMusicDivs( divX, divY, divDimension );
  }
  //
}//
float DimensionValue( float divXY, float divDimension ) {
  return divXY = divXY + divDimension*1/4;
}//
//
float DimensionValue( float divDimension ) {
  return divDimension = divDimension*1/2;
}//
//
void drawLines( float divX, float divY, float divDimension ) {
  line( divX, divY, divX+divDimension, divY+divDimension ); //Line from top left to bottom right
  line( divX+divDimension, divY, divX, divY+divDimension ); //Line from top bottom left to top right
}//
void WideTriangle( int index, float divX, float divY, float divDimension ) {
  triangle( divX, divY, divX+divDimension, divY+DimensionValue( divDimension ), divX, divY+divDimension );
}//
//void smallTriangle ( int index, float divX, float divY, float divDimension ) {
//  //triangle( divX, divY,
//}//
