/* DIVS fro Music Interface
 
 
 
 */
//
//Libraries
//
//Classes - Objects
MusicPlayer musicPlayer;
//
//Global Variables
int appWidth, appHeight;
//
//
//void settings() {}//End Settings
//Note: CANVAS based on display, see intermediate  //Mr.Mercer Notes
//
void setup () {
  println( displayWidth, displayHeight );
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  musicPlayer = new MusicPlayer(16); //Error[NullPointerException
  musicPlayer.divsArray();
  musicPlayer.RECT();
  
  //musicPlayer.draw();
  //musicPlayer.errorStatement("hello world twin");
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
