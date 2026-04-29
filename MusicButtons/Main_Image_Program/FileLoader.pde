//Global Variables
/*
 This is for void Setup in main Program
 Make Images pop up in div=3
 */
int FileCount = 0;
int CurrentFile = FileCount - FileCount;
//
PImage[] imagesPlayList;
//
void LoadFile() {
  String Open = "../"; //Exit out of current folder
  String DependanciesFolder = "Dependancies/";
  String ImagesFolder = "Images/";
  String ImagesFolderPath = sketchPath( Open + Open + DependanciesFolder + ImagesFolder ); //Note NULLPOINTEREXCEPTION IF no "/" added
  println("Images folder path: " + ImagesFolderPath);
  //
  FileCheck(ImagesFolderPath);
  //Music Folder Path
  //String MusicFolder = "Downloaded Music/";
  //String OldMusicFolder = "OldMusic/";
  //String MusicFolderPath = sketchPath( Open + Open + DependanciesFolder + MusicFolder );
  //String OldMusicFolderPath = sketchPath( Open + Open + DependanciesFolder + OldMusicFolder );
  //////
  //FileCheck(MusicFolderPath);
  //FileCheck(OldMusicFolderPath);
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
      i++; //iteration necessary here, not in regular FOR
    }
  } else {
    ErrorCheck("See fileReaeding(String pathway), fileNames==NULL");
  }
  //First Time Only
  if (FileCount==0) {
    FileCount = files.length; //Global Used for both music and images, populated once.
    ImagesLoader( files );
  }
}//
//
void ImagesLoader(String[] files) {
  imagesPlayList = new PImage[FileCount]; //sets the array length
  int fileNumber=0;
  while ( fileNumber < FileCount ) {
    imagesPlayList[ fileNumber ] = loadImage( files[ fileNumber ] );
    //ErrorCheck("Verifying Width & Height of Loaded Images, see imageLoading() in File Loading", imagesPlayList[fileNumber].width, imagesPlayList[fileNumber].height );
    fileNumber++; //functions similar to FOR
  }
  checkLoadImage(); //See Image
}//
////
//
