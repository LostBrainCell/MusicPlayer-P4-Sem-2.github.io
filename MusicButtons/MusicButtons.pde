

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
  // Button Symbols
  musicSymbol( 1, musicButtonDivX[1], buttonY, buttonWidth ); //1,2,7,8 creates square inside the button
  musicSymbol( 2, musicButtonDivX[2], buttonY, buttonWidth ); //
  musicSymbol( 4, musicButtonDivX[5], buttonY, buttonWidth ); // Pause Button
  musicSymbol( 5, musicButtonDivX[6], buttonY, buttonWidth ); //5=Create Triangle
  musicSymbol( 7, musicButtonDivX[7], buttonY, buttonWidth ); //LOOP BUTTON
  musicSymbol( 8, musicButtonDivX[8], buttonY, buttonWidth ); //LOOP BUTTON

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
