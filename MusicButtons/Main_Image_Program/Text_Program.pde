//Global Variables
color BlueInk = #4575DB; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetink = whiteInk;
float[] fontSize;
void DrawingText( PFont f, float fs, String string, float ink, float x, float y, float w, float h, int xAlign, int yAlign ) {

  fill(ink);

  //
  textAlign( xAlign, yAlign );
  //

  textFont( f, fs );
  text( string, x, y, w, h );
  fill( resetink );
}//
void fontSetup() {
  PFont font;
  String CalibriBold = "Calibri Bold";
  //font =  createFont(CalibriBold, fontSize);
  FontSize();
  font = createFont( CalibriBold, fontSize[0] );
}//
void FontSize() {
  float[] fontSize = new float[6];
  printArray(fontSize);
  int i=0;
  for ( float size : fontSize ) {
    size = appHeight;
    fontSize[i] = size;
    println( "size is", size);
    i++;
  }// do this if one wants to keep a For-Each loop
  printArray(fontSize);


  float fontSize1=appHeight;
}//
