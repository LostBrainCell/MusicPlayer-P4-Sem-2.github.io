//
void musicload() {
  minim = new Minim(this);
  String Sketch = sketchPath();
  String open = "../" ;
  //String Seperator = "/" ; // "../" is mandotory to prevent Null
  String OldMusicFolder = "OldMusic/"; //Developer Specific
  String Dependancies = "Dependancies/"; //Developer Specific
  //
  String OldMusicDirectory = Sketch + Dependancies + OldMusicFolder;
  //
  File oldmusicFolder = new File(OldMusicDirectory);
  //
  File[] filePathway_Name = oldmusicFolder.listFiles();
  //
  String[] files = new String[filePathway_Name.length];
  numberOfSongs = filePathway_Name.length;
  currentSong = numberOfSongs-numberOfSongs;
  //
  if ( filePathway_Name != null ) {
    //
    //Comment FOR out and use FOR-Each, rememeber comment-in i above
    for ( int i=currentSong; i<numberOfSongs; i++) {
      files[i] = OldMusicDirectory + filePathway_Name[i].getName(); //print fileNames.getName() Object to String
    } // End old FOR
    /*
    for ( File file : filePathway_Name ) { //FOR-EACH Loop, creates locate class
     files[i] = lessonDependanciesFolder + file.getName(); //print filePathway_Name.getName() Object toString
     //Note: getName() is built in code
     i++; //iteration necessary here, not in regular FOR
     }
     */
  }
  currentSong=0;
  playList = new AudioPlayer[numberOfSongs]; //sets the array length
  while ( currentSong < numberOfSongs ) {
    playList[ currentSong ] = minim.loadFile( files[ currentSong ] );
    currentSong++; //functions similar to FOR
  }
  currentSong=0;
  println("Loading currentSong Variable");
  randomStart = loadRandomStart();
  if ( randomStart==true ) {
    currentSong = int( random( numberOfSongs ) );
  } else {
    currentSong = loadCurrentSong();
  }
  println("Current Song is", currentSong+1, "of", numberOfSongs);
}//
