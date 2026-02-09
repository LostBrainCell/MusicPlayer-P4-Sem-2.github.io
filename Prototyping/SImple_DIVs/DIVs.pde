//Global Variables
int numberOfDIVs = 1;
int numberOfParameters = 4;
float[] divs = new float[numberOfDIVs*numberOfParameters];
//
void divs() {
  //float paperWidth = 279;
  //float paperHeight = 216;
  float ;
  //
  divs[0] = appWidth * 70 / 279 ; //Even for Width
  divs[1] = appHeight * 54 / 216 ; //Odd for Height
  divs[2] = appWidth * 134 / 279 ; //Even for Width | x(width) of the inner screen
  divs[3] = appHeight * 102 / 216 ; //Odd for Height | y(height) of inner screen
  /* For music player buttons
  divs[4] = appWidth * 70 / 279 ; //Even for Width
  divs[5] = appHeight * 54 / 216 ; //Odd for Height
  divs[6] = appWidth * 134 / 279 ; //Even for Width
  divs[7] = appHeight * 102 / 216 ; //Odd for Height
  */
  //
  printArray(divs);
  //
  rectDIV(divs[0], divs[1], divs[2], divs[3]);
  ButtonDIV();
  //
  
  for ( int i=0; i<divs.length; i+=4 ) {
    rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
  }// Loop End
  
  //
}//End DIVs
//
void rectDIV(float x, float y, float w, float h) {
  //DIVs: dividing out the CANVAS in non-overlapping sections
  rect(x, y, w, h); //NullPointer Exception happens if use void settings() {}
}//End Rectangle Code
//
//End Subprogram DIVs
