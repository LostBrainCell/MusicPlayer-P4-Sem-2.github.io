int appWidth, appHeight;

rectTest rect;

void setup () {
  println( displayWidth, displayHeight );
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  rect = new rectTest(16); //Error[NullPointerException
  rect.divsArraySETUP();

}//END SETUP
//
void draw () {
}//END DRAW  note
//
void keyPressed() {
}//END KEYPRESSED
//
void mousePressed() {
}//END MOUSEPRESSED
//
//End DRIVER
