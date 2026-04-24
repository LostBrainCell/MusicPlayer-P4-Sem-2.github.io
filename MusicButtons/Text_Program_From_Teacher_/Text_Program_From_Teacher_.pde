/* Text, Simple ... Hardcoded
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population: DIVs
//Note: int(i/4) && i%4==2,3 (width, height)
//Turn these variabels into formulas
int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float quitX = appWidth - appHeight*1/20;
float quitY = 0;
float quitWidth = appHeight*1/20;
float quitHeight = appHeight*1/20;
float songTitleDivX = beginningButtonSpace;
float songTitleDivY = appHeight*1.5/20;
float songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float songTitleDivHeight = appHeight*1/10;
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*1.5/20;
float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float messageDIV_Height = appHeight*9/20;
//
//DIV: Image
rect(quitX, quitY, quitWidth, quitHeight); //Exit Button
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight); // Long Rectangle
rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height); // Big Box
//
//Strings, Text, Literal
//Note: Metadata
String title = "Testing Text";
/* Full String longer than Rectangle, "Wahoo! I changed 2D Size."
 - divHeight must fit the font size or text is not shown (Advanced, error check includes %-decrease)
 - Fonts includes the in WHITE SPACE around the foreground "coloured ink"
 - divWidth must include the font size
 - if font is too big, wrap around happens
 - OR full string is not drawn
 */
//Fonts from OS
//println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
//String[] fontList = PFont.list(); //To list all fonts available on system
//printArray(fontList); //For listing all possible fonts to choose, then createFont
//Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
//
// Students enter all text from Case Study
//
// Fonts from OS
float fontSize1 = songTitleDivHeight; //Entire Program, Algorithm to have smallest font size
float fontSize2 = messageDIV_Height; 
float fontSize3 = quitHeight; 
PFont font; //Font Varaible Name, able to have more than one Font
String Calibri = "Calibri Bold"; //Spelling of the Font Matters, see PFont.list() v Create Font above
font = createFont(Calibri, fontSize1);
//font = createFont(Calibri, fontSize2);
//font = createFont(Calibri, fontSize3);
//
// Aspect Ratio for Harrington
//float fontSizeHarrington = 86; //Default fontSize for ~100%
//float divHeightHarrington = songTitleDivHeight; //Key:Value, value=120
////float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington; //#<1
////
//fontSize1 = songTitleDivHeight * harringtonAspectRatio; 
//fontSize2 = messageDIV_Height* harringtonAspectRatio; 
//fontSize3 = quitHeight * harringtonAspectRatio; 
//
//Drawing Text
color BlueInk = #4575DB; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(BlueInk); //Ink, hexidecimal copied from Color Selector
//Grey Scale 0-255
//While() {} program tomorrow thursday
textAlign(CENTER, BOTTOM ); 
//
float constantDecrease= 0.99;
int iWhile=0;
textFont(font, fontSize1); //must include textSize() before text() & textWidth()
while ( textWidth(title) > songTitleDivWidth ) {
  iWhile++;
  if ( iWhile>10000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize1);
}
text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
//
textFont(font, fontSize2); //must include textSize() before text() & textWidth()
iWhile=0;
while ( textWidth(title) > messageDIV_Width ) {
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize2 *= constantDecrease;
  textFont(font, fontSize2);
}
text( title, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
//
textFont(font, fontSize3); //must include textSize() before text() & textWidth()
iWhile=0;
while ( textWidth(title) > quitWidth ) {
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize3 *= constantDecrease;
  textFont(font, fontSize3);
}
text( title, quitX, quitY, quitWidth, quitHeight );
fill(resetInk);
//
