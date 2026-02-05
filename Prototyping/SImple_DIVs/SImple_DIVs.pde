/* DIVs in Procedural VOICE
 
 
 
 */
//
//
//Libraries - Minim
//
//Global Variables
int appWidth, appHeight;

//
void settings() {
  println(displayWidth, displayHeight);
  int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth;
  shorterSide *= 0.9; //90% of the original
  size(shorterSide, shorterSide);
}//End Settings
//
void setup() {
  int shorterSide = 1080;
  //size(shorterSide, shorterSide);
  /*

   //size( 1200, 800); //Width, Height
   fullScreen();
   appWidth = displayWidth; //Best Practice
   appHeight = displayHeight; //
   */
}//End Setup
//
void draw() {
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {
}//End Key Pressed
//
//End MAIN Program
