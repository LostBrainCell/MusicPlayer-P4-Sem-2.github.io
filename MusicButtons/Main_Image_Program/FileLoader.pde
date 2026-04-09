//Global Variables
/*

 This is for void Setup in main Program
 
 */
int FileCount = 0;
int CurrentFile = FileCount - FileCount;
//
PImage[] imagesPlayList;
//
void LoadFile() {
  String Close = "..";
  String Open = "/";
  String DependanciesFolder = "Dependancies";
  String ImagesFolder = "Images";
  String ImagesFolderSource = sketchPath( Close + Close + Open + DependanciesFolder + Open + ImagesFolder );
  println("Images folder path: " + ImagesFolderSource);
  //
  FileCheck(ImagesFolderSource);
}//
void FileCheck( String Source ) {
  File LocalFile  = new File(Source);
  //
  File[] fileNames = LocalFile.listFiles();
  //
  String[] files = new String[fileNames.length];
  int i= 0;
  //
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates local class
      files[i] = Source + file.getName(); //print fileNames.getName() Object to String
      //Note: getName() is built in code
      i++; //iteration necessary here, not in regular FOR
    }
  } else {
    ErrorCheck("SeeFileCheck (String pathway), fileNames==NULL");
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
//Buttons
int checkNum (int i) {
  if ( i >= FileCount ) {
    CurrentFile = 0;
  } else if ( i <= -1 ) {
    i = 0;
  }
  return i;
}
int loopVar( int i ) {
  if ( i < FileCount ) {
    i++;
  } else if ( i == FileCount ) {
    CurrentFile = 0;
  } else if ( i == -1 ) {
    i = 0;
  }
  checkNum (i);
  return i;
}//End Next
int loopVar( int i, int total ) {
  if ( i < total ) {
    i++;
  } else if ( i == total ) {
    CurrentFile = 0;
  } else if ( i == -1 ) {
    i = 0;
  }
  checkNum (i);
  return i;
}//End Next
//
//End Next
