
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
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
//Display
void setup() {
  size( 700, 500 );
  int appWidth = width;
  int appHeight = height;
  //
  //
  minim = new Minim(this);
  String open = "../" ;
  //String Seperator = "/" ; // "../" is mandotory to prevent Null
  String OldMusicFolder = "OldMusic/"; //Developer Specific
  //String soundEffectsFolder = "Sound Effects/"; //Don't have sound effects
  String Dependancies = "Dependancies/"; //Developer Specific
  String songName1 = "groove";
  //String soundEffect1 = "Car_Door_Closing";
  String MP3 = ".mp3";
  //
  String OldMusicDirectory = open + Dependancies + OldMusicFolder;
  //String SoundEffects //Note don't have one
  String Path = OldMusicDirectory + songName1 + MP3;
  playList[ currentSong ] = minim.loadFile( Path ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE //Note: Don't have Sound Effects
  //soundEffects[currentSong] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  //ErrorCheck
  if  ( playList[currentSong]==null ) {
    println("PlayList is not loaded");
    printArray(playList);
    //printArray for Sound Effects
  } else {
    playList[currentSong].play();
    printArray(playList);
    //Note: Music/Sound Effects only play with |void setup()| and |void draw()| are in the code
  }//
}//
//
void draw() {}//
