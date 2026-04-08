//Global Variables

import java.io.File;
//
int appWidth, appHeight;
Boolean musicGUI=false;
//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  divs();
  //
  LoadFile();
  //

  //
}//END SETUP
//
void draw() {
  //
  //Activate Music GUI
  //ErrorCheck("draw() Music GUI set:", musicGUI);
  if ( musicGUI==true ) {
    //seeMusicGUI();
    imageDrawing( imagesPlayList[CurrentFile], 0 ); //imageDrawingAspectRatio
    imageDrawingAspectRatio( imagesPlayList[CurrentFile], 12 ); //imageDrawing
  } else {
    background(0);
  }
  seeQuitMusicButton();
  //
} //End draw
//
void mousePressed() {
  //ERROR Check NUM below
  //int num=8; //ERROR Check i%4=0, int(i/4)=3, num=8
  //println(divs[num], divs[num+1], divs[num+2], divs[num+3]);
  //
  //mouseX>divs[num] && mouseX<divs[num]+divs[num+2] && mouseY>divs[num+1] && mouseY<divs[num+1]+divs[num+3]
  //CAUTION: IF Statements will execute each time
  //Note: easily used with COPY & PASTE
  int num=4;
  if ( mouseReturn (num) ) exit();
  num=8;
  if ( mouseReturn (num) ) musicGUI = varSwitch(musicGUI);
} //End Mouse Pressed
//
void keyPressed() {
  //key=='CAP' || key=='LOWER' //Note" Caps Lock
  //key==CODED || keyCode==ESC //Special Keys
  if (key==CODED || keyCode==ESC) exit();
  if (key=='Q' || key=='q') exit();
  if (key=='M' || key=='m') musicGUI = varSwitch(musicGUI);
  if (key=='N' || key=='n') CurrentFile = loopVar( CurrentFile ); //See Buttons
  checkNum (CurrentFile);
} //End Key Pressed
Boolean varSwitch(Boolean variable) {
  if ( variable==true ) {
    return variable=false;
  } else {
    return variable=true;
  }
}
Boolean mouseReturn (int num) {
  return mouseX>divs[num] && mouseX<divs[num]+divs[num+2] && mouseY>divs[num+1] && mouseY<divs[num+1]+divs[num+3];
}//End Mouse Return
//
//End MAIN Program
