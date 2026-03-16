

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
  drawMusicDivs(musicButtonDivX[0], randomButtonY, randomButtonDimension );
  drawMusicDivs(musicButtonDivX, buttonY, buttonWidth );
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
