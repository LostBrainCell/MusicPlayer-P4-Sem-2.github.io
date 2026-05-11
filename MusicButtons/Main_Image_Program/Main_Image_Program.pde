import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables

import java.io.File;
//
MusicPlayer DivsMusicPlayer;
//
Minim minim;
int appWidth, appHeight;
Boolean musicGUI=false;
//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  DivsMusicPlayer = new MusicPlayer(16);
  DivsMusicPlayer.seeQuitMusicButton();
  //MusicButtonsSetup( 6, divs[6], divs[6], divs[2]/13);
  //LoadFile();
  //FontSetup();
  ////
  //DrawingText( font, fontSize, title,       );
}//END SETUP
//
void draw() {
  //
  //Activate Music GUI
  //ErrorCheck("draw() Music GUI set:", musicGUI);
  if ( DivsMusicPlayer.musicGUI==true ) {
    DivsMusicPlayer.draw();
    //imageDrawing( imagesPlayList[1], 12 ); //imageDrawingAspectRatio
    //imageDrawingAspectRatio( imagesPlayList[0], 13 ); //imageDrawing
  } else {
    background(0);
  }
  DivsMusicPlayer.seeQuitMusicButton();  //
} //End draw
//
void mousePressed() {
  DivsMusicPlayer.mousePressed();
} //End Mouse Pressed
//
void keyPressed() {
  DivsMusicPlayer.keyPressed();
}//End Mouse Return
//
//End MAIN Program
