//Review Minim Library
/* Library Notes
 - File / Sketch / Import Library / Manage Libraries
 - We use Minim for Sound and Sound Effects
 - Able to Google-search libraries to make your project easier
 - Documentation: https://code.compartmental.net/minim/
 - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
 - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
 
 ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
 - Processing-Java Libraries must be installed into the IDE
 - Java Libraries simply require the 'import' declaration
 
 - Note: Hard Drive Registery or address
 
 - Library will not execute since not using full compiler
 
 */
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Varaibles
int appHeight, appWidth;
Minim minim; //initates entire class
int numberOfSongs = 8; //Best Practice
int numberOfSoundEffects = 4; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
//Display
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //
  minim = new Minim(this);
  String open = "../" ;
  //String Seperator = "/" ; // "../" is mandotory to prevent Null
  String OldMusicFolder = "OldMusic/"; //Developer Specific
  String SoundEffectsFolder = "SoundEffects/"; //Don't have sound effects
  String Dependancies = "Dependancies/"; //Developer Specific
  String MP3 = ".mp3";
  //
  String OldMusicDirectory = open + Dependancies + OldMusicFolder;
  String SoundEffectsDirectory = open + Dependancies + SoundEffectsFolder;
  //
  String[] songTitles = {
    "Beat_Your_Competition",
    "Cycles",
    "Eureka",
    "Ghost_Walk",
    "groove",
    "Newsroom",
    "Start_Your_Engines",
    "The_Simplest"
  };
  //
  // Initialize numberOfSongs and songName
  numberOfSongs = songTitles.length;
  String[] songName = new String[numberOfSongs];
  for (int i = 0; i < numberOfSongs; i++) {
    songName[i] = songTitles[i];
  }
  //for (  ) {
  //}//    Path = SoundEffectsDirectory + soundEffect1 + MP3; //Rewritting FILE
  //
  String Path ;
  for (String name : songName ) { //FOR Each
    Path = OldMusicDirectory + name + MP3;
    playList[ currentSong ] = minim.loadFile( Path ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
    playListMetaData[ currentSong ] = playList[ currentSong ].getMetaData();
    //soundEffects[currentSong] = minim.loadFile( Path ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
    currentSong++;
  }//End FOR-Each
  currentSong=0; //Mandantory to not get ArrayIndexOutofBoundsException
  //
  //ErrorCheck
  for ( AudioPlayer song : playList ) { //Mercer Code
    if ( song == null ) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List did not load properly");
      printArray(playList);
      exit();
    }
  }//End Play List ERROR Check
  //
  //if  ( soundEffects[currentSong]==null ) {
  //  println("PlayList is not loaded");
  //  printArray(soundEffects);
  //  exit();
  //  //printArray for Sound Effects
  //}//
  inspectmetadata( playListMetaData );
  //
}//
//
void draw() {
  textdraw( playListMetaData[currentSong].title(), playListMetaData[currentSong].genre() );
}//
//
void mousePressed() {
} //End Mouse Pressed
//  
void keyPressed() {
  /* Simple Play
   playList[currentSong].play(); //BasicPlay
   currentSong++; //Basic Next Song
   */
  //
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   -
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PAUSE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  if ( key=='B' || key=='b' ) {
    playList[currentSong].isPlaying();
    playList[currentSong].rewind();
  } // Previous, Back //Students to finish
  //
  if ( key=='Y' || key=='y' ) currentSong = int(random(0, numberOfSongs)); //random(0, numberOfSongs)
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
} //End Key Pressed
//
//End MAIN Program
