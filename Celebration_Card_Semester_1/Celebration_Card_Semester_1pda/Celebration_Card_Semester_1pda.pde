//Global Variables
PImage rectQuit;
PImage rectClame;
PImage rectTree;
PImage rectReturn;
PImage rectSnowGlobe;
PImage FrontImage;
PImage FrontBackgroundImage;
PFont IntroductionFont;
PFont InitialFont;
PFont QuestionFont;
String Introduction = "Merry Christmas!";
String Initials = "Eric Barnes";
String Yes = "Yes";
String No = "No";
String Question = "Are you sure you want to quit?";
String Greetings = "Happy Holidays!";
String OpenQuestion = "Open";
color Gray=#AFAFAF;
color Black=#000000;
color Green=#00DE01;
color Red=#DE001E;
color DarkGreen=#02B703;
color DarkRed=#AA021B;
color pine=#00AA29;
color crimson=#B90202;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
int brightnessNumber=255;
int NightmodeBlue=40;
int NightmodeRed=125;
int NightmodeGreen=125;
float xRectLine1, yRectLine1, widthRectLine1, heightRectLine1;
float xRectCard1, yRectCard1, widthRectCard1, heightRectCard1;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectSnowGlobe, yRectSnowGlobe, widthRectSnowGlobe, heightRectSnowGlobe;
float xRectTree, yRectTree, widthRectTree, heightRectTree;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xRectIntroduction, yRectIntroduction, widthRectIntroduction, heightRectIntroduction;
float xRectreturn, yRectreturn, widthRectreturn, heightRectreturn;
float xRectphrase, yRectphrase, widthRectphrase, heightRectphrase;
float xRectinitials, yRectinitials, widthRectinitials, heightRectinitials;
float xClame, yClame, widthClame, heightClame;
float xClameOutline, yClameOutline, widthClameOutline, heightClameOutline;
float xSnowFall, ySnowFall, SnowFallDiameter;
float ConfirmationBackgroundx, ConfirmationBackgroundy, ConfirmationBackgroundwidth, ConfirmationBackgroundheight;
float xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes;
float xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo;
float xConfirmationQuestion, yConfirmationQuestion, widthConfirmationQuestion, heightConfirmationQuestion;
float xFrontDeadSpace, yFrontDeadSpace, widthFrontDeadSpace, heightFrontDeadSpace;
float xFrontBackground, yFrontBackground, widthFrontBackground, heightFrontBackground;
float xFrontText, yFrontText, widthFrontText, heightFrontText;
float xFrontImage, yFrontImage, widthFrontImage, heightFrontImage;
float xOpenCard, yOpenCard, widthOpenCard, heightOpenCard;
Boolean brightnessControl=false;
Boolean nightmode=false;
Boolean Redcontrol=false;
Boolean Bluecontrol=false;
Boolean Greencontrol=false;
Boolean SnowFall=false;
Boolean ExitConfirmation=false;
Boolean CardFront=true;
void setup() {
  //
  int hourNightMode = hour();
  println(hourNightMode);
  if ( hourNightMode>18 ) {
    nightmode=true;
  } else if ( hourNightMode<06 ) {
    nightmode=true;
  } else {
    nightmode=false;
  }
  //
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width:"+displayWidth, "\tDisplay Height: "+displayHeight);
  //
  //fullScreen();
  size(1000, 800);
  int appWidth = width;
  int appHeight = height;
  //
  String up = "..";
  String open = "/";
  String ImagesPath = up + open + up + open;
  String Imagefolder = "Images";
  String menuImage = "menu.png";
  String exitImage = "exet.png";
  String nextImage = "next.png";
  String christmastreeImage = "Christmas Tree.jpg";
  String ImageUsed = "Santa.jpg";
  //
  ConfirmationBackgroundx = appWidth*0;
  ConfirmationBackgroundy = appHeight*0;
  ConfirmationBackgroundwidth = appWidth-1;
  ConfirmationBackgroundheight = appHeight-1;
  //
  xConfirmationYes = appWidth*1/4;
  yConfirmationYes = appHeight*3/7;
  widthConfirmationYes = appWidth*1/7;
  heightConfirmationYes = appHeight*2/11;
  //
  xConfirmationNo = appWidth*3/5;
  yConfirmationNo = yConfirmationYes;
  widthConfirmationNo = appWidth*1/7;
  heightConfirmationNo = heightConfirmationYes;
  //
  xConfirmationQuestion = appWidth*1/4;
  yConfirmationQuestion = appHeight*1/6;
  widthConfirmationQuestion = appWidth*1/2;
  heightConfirmationQuestion = appHeight*2/13;
  //
  xRectSnowGlobe = appWidth*3/8;
  yRectSnowGlobe = appHeight*7/12;
  widthRectSnowGlobe = appWidth*6/8;
  heightRectSnowGlobe = appHeight*3/8;
  //
  xRectIntroduction = appWidth*1/4;
  yRectIntroduction = appHeight*1/6;
  widthRectIntroduction = appWidth*1/2;
  heightRectIntroduction = appHeight*1/8;
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  //
  xRectLine1 = appWidth*1/2;
  yRectLine1 = appHeight;
  widthRectLine1 = xRectLine1;
  heightRectLine1 = appHeight*0/10;
  //
  xRectCard1 = appWidth*21/25;
  yRectCard1 = appHeight*0/20;
  widthRectCard1 = appWidth*1/12;
  heightRectCard1 = appHeight*1/12;
  //
  xRectQuit = appWidth*23/25;
  yRectQuit = appHeight*0/20;
  widthRectQuit = appWidth*1/12;
  heightRectQuit = appHeight*1/12;
  //
  xClame = appWidth*3/8;
  yClame = appHeight*3/4;
  widthClame = appWidth*1/4;
  heightClame = appHeight*1/8;
  //
  xRectTree = appWidth*1/4;
  yRectTree = appHeight*1/3;
  widthRectTree = appWidth*1/2;
  heightRectTree = appHeight*2/5;
  //
  xFrontDeadSpace = appWidth*0;
  yFrontDeadSpace = appHeight*0;
  widthFrontDeadSpace = appWidth-1;
  heightFrontDeadSpace = appHeight-1;
  //
  xFrontBackground = appWidth*1/4;
  yFrontBackground = yFrontDeadSpace;
  widthFrontBackground = appWidth*2/4;
  heightFrontBackground = heightFrontDeadSpace;
  //
  xFrontText = appWidth*1/3;
  yFrontText = appHeight*3/5;
  widthFrontText = appWidth*1/3;
  heightFrontText = appHeight*1/5;
  //
  xOpenCard = appWidth*2/5;
  yOpenCard = appHeight*10/12;
  widthOpenCard = appWidth*1/5;
  heightOpenCard = appHeight*1/10;
  //
  xFrontImage = xFrontText;
  yFrontImage = appHeight*1/20;
  widthFrontImage = widthFrontText;
  heightFrontImage = appHeight*1/2;
  //
  rectReturn = loadImage(ImagesPath + Imagefolder + open + menuImage);
  rectQuit = loadImage(ImagesPath + Imagefolder + open + exitImage);
  rectClame = loadImage(ImagesPath + Imagefolder + open + nextImage);
  FrontBackgroundImage = loadImage(ImagesPath + Imagefolder + open + christmastreeImage);
  FrontImage = loadImage(ImagesPath + Imagefolder + open + ImageUsed);
  rectTree = loadImage(ImagesPath + Imagefolder + open + christmastreeImage);
  //
  //circle(500, 400, 800);
  rect(xRectCard1, yRectCard1, widthRectCard1, heightRectCard1);
  rect(xRectSnowGlobe, yRectSnowGlobe, widthRectSnowGlobe, heightRectSnowGlobe);
  rect(xRectTree, yRectTree, widthRectTree, heightRectTree);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xRectreturn, yRectreturn, widthRectreturn, heightRectreturn);
  rect(xRectphrase, yRectphrase, widthRectphrase, heightRectphrase);
  rect(xRectinitials, yRectinitials, widthRectinitials, heightRectinitials);
  rect(xClameOutline, yClameOutline, widthClameOutline, heightClameOutline);
  rect(xClame, yClame, widthClame, heightClame);
  line(xRectLine1, yRectLine1, widthRectLine1, heightRectLine1);
  //
  IntroductionFont = createFont("Comic Sans MS", 55);
  InitialFont = createFont("Papyrus", 55);
  QuestionFont = createFont("Arial", 55);
  //
  } //End setup
  //
void draw() {
  //
  if (ExitConfirmation==true && CardFront==false) ExitConfirmation ();
  if (ExitConfirmation==false && CardFront==false) CardContents ();
  if (ExitConfirmation==false && CardFront==true) CardFront ();
  //
} //End draw
//
void keyPressed() {
  //
  if ( key=='n' || key=='N' ) {
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }   
  //
  if (key=='r' || key=='R') {
    if ( Redcontrol==true ) {
      Redcontrol = false;
    } else {
      Redcontrol = true;
    }
  }
  //
  if (key=='b' || key=='B') {
    if ( Bluecontrol==true ) {
      Bluecontrol = false;
    } else {
      Bluecontrol = true;
    }
  }
  //
  if (key=='g' || key=='G') {
    if ( Greencontrol==true ) {
      Greencontrol = false;
    } else {
      Greencontrol = true;
    }
  }
  //
  if(key==' ') SnowFall=true;
  if(key==BACKSPACE) SnowFall=false;
  //
    if (key==CODED && keyCode == UP || keyCode == DOWN) {
    brightnessControl = true;
    if (key==CODED && keyCode == UP) brightnessNumber+=5;
    if (key==CODED && keyCode == DOWN) brightnessNumber-=5;
  }
  //
  //println(Redcontrol);
  //println(Bluecontrol);
  //println(Greencontrol);
  //println(nightmode);
  //
} //End keyPressed
//
void mousePressed() {
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  if (mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit) ExitConfirmation=true;
  if (mouseX>xConfirmationNo && mouseX<xConfirmationNo+widthConfirmationNo && mouseY>yConfirmationNo && mouseY<yConfirmationNo+heightConfirmationNo) ExitConfirmation=false;
  if (mouseX>xClame && mouseX<xClame+widthClame && mouseY>yClame && mouseY<yClame+heightClame) println("clamed");
  if (mouseX>xOpenCard && mouseX<xOpenCard+widthOpenCard && mouseY>yOpenCard && mouseY<yOpenCard+heightOpenCard) CardFront=false;
  if (mouseX>xRectCard1 && mouseX<xRectCard1+widthRectCard1 && mouseY>yRectCard1 && mouseY<yRectCard1+heightRectCard1) CardFront=true;
  if (mouseX>xConfirmationYes && mouseX<xConfirmationYes+widthConfirmationYes && mouseY>yConfirmationYes && mouseY<yConfirmationYes+heightConfirmationYes) exit();
  //
} //End mousePressed
//
//End MAIN Program
