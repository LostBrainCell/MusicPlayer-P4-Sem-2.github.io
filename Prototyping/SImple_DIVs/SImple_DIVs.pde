/* DIVs in Procedural VOICE
 
 */
//
//
//Libraries - Minim
//
//Global Variables
int appWidth, appHeight;
//
/*
void settings() {
 //size( 1200, 800); //Width, Height
 //
/* For a square shaped Screen
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth;
 shorterSide *= 0.9; //90% of the original
 size(shorterSide, shorterSide);
 println("Display Questions", displayWidth, displayHeight, shorterSide);
 println("CANVAS Size Key Variables for setup()", width, height);
 }//End Settings
 */
//
void setup() {
  fullScreen();
  appWidth = displayWidth; //Best Practice
  appHeight = displayHeight; //
  //
  divs();
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
