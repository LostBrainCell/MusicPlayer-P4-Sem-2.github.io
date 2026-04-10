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
  // AI code
  if (fileNames == null) {
    println("Error: LocalFile.listFiles() returned null. Directory may not exist or is inaccessible.");
    return;
  }
  // Fixed crashing from NullPointerException (Code from AI)
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
//End Next
