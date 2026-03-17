

//Global Variables
int appWidth, appHeight;



//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //Population Building
  //
  DivPOPULATION();
  //
  drawMusicDivs( musicButtonDivX[0], randomButtonY, randomButtonDimension );
  drawMusicDivs( musicButtonDivX, buttonY, buttonWidth );
  //
  musicSymbol( 1, musicButtonDivX[1], buttonY, buttonWidth );
  musicSymbol( 2, musicButtonDivX[2], buttonY, buttonWidth );
  musicSymbol( 7, musicButtonDivX[7], buttonY, buttonWidth );
  musicSymbol( 8, musicButtonDivX[8], buttonY, buttonWidth );
  
  //
}//END SETUP
//
void draw() {
}//END DRAW  note
//
void keyPressed() {
}//END KEYPRESSED
//
void mousePressed() {
}//END MOUSEPRESSED
//
//End DRIVER
