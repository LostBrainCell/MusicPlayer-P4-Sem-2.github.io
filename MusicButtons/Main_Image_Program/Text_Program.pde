//Global Variables
color BlueInk = #4575DB; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetink = whiteInk;
float[] fontSize;
// This code is for divs=14 and divs=15
//
void DrawingText( PFont f, float fs, String string, color ink, float x, float y, float w, float h, int xAlign, int yAlign ) {
  fill(ink);
  //
  textAlign( xAlign, yAlign );
  //
  textFont( f, fs );
  text( string, x, y, w, h );
  fill( resetink );
}//
void FontSetup() {
  PFont font;
  String CalibriBold = "Calibri Bold";
  //font =  createFont(CalibriBold, fontSize);
  FontSize();
  font = createFont( CalibriBold, fontSize[0] );
  //
  //float fontSizeCalibri = 86; //Default fontSize for ~100%
  //  float divHeightCalibri= ; //Key:Value, value=120
  //  float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington; //#<1
  // Note 
  loopFontSize(fontSize);
}//
void FontSize() {
  float[] fontSize = new float[6];
  printArray(fontSize);
  loopFontSize(fontSize);
  printArray(fontSize);
}//
void loopFontSize(float[] fontSize ) {
  for ( int i=0; i<fontSize.length; ) {
    fontSize[i] = appHeight;
    println( "size is", fontSize[i]);
    i++;
  }//
}//
