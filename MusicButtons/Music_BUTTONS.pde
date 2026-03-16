/* Notes
 -
 -
 -
 -
 */
//Global Variables
int randomButtonY, randomButtonDimension, buttonY, buttonWidth;
int numberOfButtons = 12;
float[] musicButtonDivX = new float[numberOfButtons];

//
//
void DivPOPULATION() {
  buttonWidth = appWidth/13 ; // number of buttons in a row + 2xPadding
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
void  musicSymbol( int idex, float divX,  float divY, float divDimension ) {
}//
