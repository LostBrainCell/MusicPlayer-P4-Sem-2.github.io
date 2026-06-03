class FileLoad {
  //Global Variables
  int FileCount = 0;
  int CurrentFile = FileCount - FileCount;
  int numberOfSongs = 8; //Best Practice
  int numberOfSoundEffects = 4; //Best Practice
  AudioPlayer[] SongPlayList = new AudioPlayer[ numberOfSongs ];
  AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
  AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
  Minim minim;
  //
  FileLoad(Minim minim) {
    this.minim = minim; // Assign the passed Minim object
    FileCount = 0;
    CurrentFile = 0;
    //numberOfSongs = 8; //Best Practice
    //numberOfSoundEffects = 4; //Best Practice
    SongPlayList = new AudioPlayer[numberOfSongs];
    AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
    playListMetaData = new AudioMetaData[numberOfSongs];
    imagesPlayList = new PImage[numberOfSongs]; // Initialize image array
  }
  /*
 This is for void Setup in main Program
   Make Images pop up in div=3
   */
  //
  PImage[] imagesPlayList;
  //
  void LoadFile() {
    String Open = "../"; //Exit out of current folder
    String DependanciesFolder = "Dependancies/";
    //String ImagesFolder = "Images/";
    //String ImagesFolderPath = sketchPath( Open + Open + DependanciesFolder + ImagesFolder ); //Note NULLPOINTEREXCEPTION IF no "/" added
    //println("Images folder path: " + ImagesFolderPath);
    ////
    //FileCheck(ImagesFolderPath);
    //Music Folder Path
    //String MusicFolder = "Downloaded Music/";
    String OldMusicFolder = "OldMusic/";
    //String MusicFolderPath = sketchPath( Open + Open + DependanciesFolder + MusicFolder );
    String OldMusicFolderPath = sketchPath( Open + Open + DependanciesFolder + OldMusicFolder );
    String SoundEffectsFolder = "/SoundEffects";
    String SoundEffectsFolderPath = sketchPath( Open + Open + DependanciesFolder + SoundEffectsFolder );
    //////
    //FileCheck(MusicFolderPath);
    FileCheck(OldMusicFolderPath);
  }//
  void FileCheck( String Source ) {
    File LocalFile  = new File(Source);
    //
    File[] fileNames = LocalFile.listFiles();
    // AI code
    // Fixed crashing from NullPointerException (Code from AI)
    //
    String[] files = new String[fileNames.length]; //Null Pointer Exception
    int i= 0;
    //
    if ( fileNames != null ) {
      for ( File file : fileNames ) { //FOR EACH Loop, creates local class
        files[i] = Source + file.getName(); //print fileNames.getName() Object to String
        //Note: getName() is built in code
        println( file ); //Check Files
        i++; //iteration necessary here, not in regular FOR
      }
    } else {
      ErrorCheck("See fileReaeding(String pathway), fileNames==NULL");
    }
    //First Time Only
    if (FileCount==0) {
      FileCount = files.length; //Global Used for both music and images, populated once.
      //ImagesLoader( files );
      SongLoader(files);
    }
  }//
  //
  /*
  void ImagesLoader(String[] files) {
   imagesPlayList = new PImage[FileCount]; //sets the array length
   int fileNumber=0;
   while ( fileNumber < FileCount ) {
   imagesPlayList[ fileNumber ] = loadImage( files[ fileNumber ] );
   //ErrorCheck("Verifying Width & Height of Loaded Images, see imageLoading() in File Loading", imagesPlayList[fileNumber].width, imagesPlayList[fileNumber].height );
   fileNumber++; //functions similar to FOR
   }
   checkLoadImage(); //See Image
   }// Commented out for since DIVs can no longer be accessed by Imageloader
   */
  //
  void SongLoader(String[] files) {
    if (files == null || files.length == 0) {
      println("ERROR: No files provided to SongLoader.");
      return; // Exit the method
    }
    FileCount = files.length; // Set FileCount to the number of files
    SongPlayList = new AudioPlayer[FileCount]; // Initialize the SongPlayList array
    int fileNumber = 0;
    while (fileNumber < FileCount) { // Loop through the files
      SongPlayList[fileNumber] = minim.loadFile(files[fileNumber]); // Load each file
      playListMetaData[ fileNumber ] = SongPlayList[ fileNumber ].getMetaData();
      if (SongPlayList[fileNumber] != null) {
        println("Loaded song: " + files[fileNumber]); // Debugging output
      } else {
        println("ERROR: Failed to load song: " + files[fileNumber]);
      }
      fileNumber++;
    }
    FileCount=0; //To Prevent Array Index Bounds Error or something// no touchy/remove

    // Automatically play the first song in the playlist
    //if (FileCount > 0 && SongPlayList[0] != null) {
    //  println("Playing first song: " + files[0]);
    //  //SongPlayList[0].play(); // Play the first song
    //} else {
    //  println("ERROR: No valid songs to play.");
    //}
    inspectmetadata(playListMetaData);
  }
  void keyPressed() {
    if ( key=='P' || key=='p' ) SongPlayList[FileCount].loop(0); //Simple Play, double tap possible
    /* Note: double tap is automatic rewind, no pause
     Symbol is two triangles
     This changes what the button might become after it is pressed
     */
    if ( key=='O' || key=='o' ) { // Pause
      //
      if ( SongPlayList[FileCount].isPlaying() ) {
        SongPlayList[FileCount].pause();
      } else {
        SongPlayList[FileCount].play();
      }
    }
    //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
    //
    if ( key=='S' | key=='s' ) {
      if ( SongPlayList[FileCount].isPlaying() ) {
        SongPlayList[FileCount].pause(); //single tap
      } else {
        SongPlayList[FileCount].rewind(); //double tap
      }
    }
    if ( key=='L' || key=='l' ) SongPlayList[FileCount].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
    if ( key=='K' || key=='k' ) SongPlayList[FileCount].loop(); // Loop Infinitely //Parameter: BLANK or -1
    if ( key=='F' || key=='f' ) SongPlayList[FileCount].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
    if ( key=='R' || key=='r' ) SongPlayList[FileCount].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
    if ( key=='W' || key=='w' ) { // MUTE
      //
      //MUTE Behaviour: stops electricty to speakers, does not stop file
      //NOTE: MUTE has NO built-in PAUSE button, NO built-in rewind button
      //ERROR: if song near end of file, user will not know song is at the end
      //Known ERROR: once song plays, MUTE acts like it doesn't work
      if ( SongPlayList[FileCount].isMuted() ) {
        //ERROR: song might not be playing
        //CATCH: ask .isPlaying() or !.isPlaying()
        SongPlayList[FileCount].unmute();
      } else {
        //Possible ERROR: Might rewind the song
        SongPlayList[FileCount].mute();
      }
    }
    //
    if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
      if ( SongPlayList[FileCount].isPlaying() ) {
        SongPlayList[FileCount].pause();
        SongPlayList[FileCount].rewind();
        //
        if ( FileCount==numberOfSongs-1 ) {
          FileCount = 0;
        } else {
          FileCount++;
        }
        SongPlayList[FileCount].play();
      } else {
        //
        SongPlayList[FileCount].rewind();
        //
        if ( FileCount==numberOfSongs-1 ) {
          FileCount = 0;
        } else {
          FileCount++;
        }
        // NEXT will not automatically play the song
        //song[currentSong].play();
      }
    }
    if ( key=='B' || key=='b' ) {
      SongPlayList[FileCount].isPlaying();
      SongPlayList[FileCount].rewind();
    } // Previous, Back //Students to finish
    //
    if ( key=='Y' || key=='y' ) FileCount = int(random(0, numberOfSongs)); //random(0, numberOfSongs)
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
  void inspectmetadata( AudioMetaData[] metaData ) {
    //
    for ( AudioMetaData song : metaData ) {
      println("File Name" + song.fileName() );
      println("Length (in milliseconds): " + song.length() );
      println("Title: " + song.title() );
      println("Author: " + song.author() );
      println("Album: " + song.album() );
      println("Date: " + song.date() );
      println("Comment: " + song.comment() );
      println("Lyrics: " + song.lyrics() );
      println("Track: " + song.track());
      println("Genre: " + song.genre() );
      println("Copyright: " + song.copyright() );
      println("Disc: " + song.disc() );
      println("Composer: " + song.composer() );
      println( "Orchestra: " + song.orchestra() );
      println("Publisher: " + song.publisher() );
      println("Encoded: " + song.encoded() );
      println(); //Empty Space
    }
  }//
}
////
//
