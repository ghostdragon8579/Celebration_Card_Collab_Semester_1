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
float xRectCard2, yRectCard2, widthRectCard2, heightRectCard2;
float xRectCard3, yRectCard3, widthRectCard3, heightRectCard3;
float xRectCard4, yRectCard4, widthRectCard4, heightRectCard4;
float xRectCard5, yRectCard5, widthRectCard5, heightRectCard5;
float xRectCard6, yRectCard6, widthRectCard6, heightRectCard6;
float xRectCard7, yRectCard7, widthRectCard7, heightRectCard7;
float xRectCard8, yRectCard8, widthRectCard8, heightRectCard8;
float xRectCard9, yRectCard9, widthRectCard9, heightRectCard9;
float xRectCard10, yRectCard10, widthRectCard10, heightRectCard10;
float xRectCard11, yRectCard11, widthRectCard11, heightRectCard11;
float xRectCard12, yRectCard12, widthRectCard12, heightRectCard12;
float xRectCard13, yRectCard13, widthRectCard13, heightRectCard13;
float xRectCard14, yRectCard14, widthRectCard14, heightRectCard14;
float xRectCard15, yRectCard15, widthRectCard15, heightRectCard15;
float xRectCard16, yRectCard16, widthRectCard16, heightRectCard16;
float xRectCard17, yRectCard17, widthRectCard17, heightRectCard17;
float xRectCard18, yRectCard18, widthRectCard18, heightRectCard18;
float xRectCard19, yRectCard19, widthRectCard19, heightRectCard19;
float xRectCard20, yRectCard20, widthRectCard20, heightRectCard20;
float xRectCard21, yRectCard21, widthRectCard21, heightRectCard21;
float xRectCard22, yRectCard22, widthRectCard22, heightRectCard22;
float xRectCard23, yRectCard23, widthRectCard23, heightRectCard23;
float xRectCard24, yRectCard24, widthRectCard24, heightRectCard24;
float xRectCard25, yRectCard25, widthRectCard25, heightRectCard25;
float xRectCard26, yRectCard26, widthRectCard26, heightRectCard26;
float xRectCard27, yRectCard27, widthRectCard27, heightRectCard27;
float xRectCard28, yRectCard28, widthRectCard28, heightRectCard28;
float xRectCard29, yRectCard29, widthRectCard29, heightRectCard29;
float xRectCard30, yRectCard30, widthRectCard30, heightRectCard30;
float xRectCard31, yRectCard31, widthRectCard31, heightRectCard31;
float xRectCard32, yRectCard32, widthRectCard32, heightRectCard32;
float xRectCard33, yRectCard33, widthRectCard33, heightRectCard33;
float xRectCard34, yRectCard34, widthRectCard34, heightRectCard34;
float xRectCard35, yRectCard35, widthRectCard35, heightRectCard35;
float xRectCard36, yRectCard36, widthRectCard36, heightRectCard36;
float xRectCard37, yRectCard37, widthRectCard37, heightRectCard37;
float xRectCard38, yRectCard38, widthRectCard38, heightRectCard38;
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
  rect(xRectCard2, yRectCard2, widthRectCard2, heightRectCard2);
  rect(xRectCard3, yRectCard3, widthRectCard3, heightRectCard3);
  rect(xRectCard4, yRectCard4, widthRectCard4, heightRectCard4);
  rect(xRectCard5, yRectCard5, widthRectCard5, heightRectCard5);
  rect(xRectCard6, yRectCard6, widthRectCard6, heightRectCard6);
  rect(xRectCard7, yRectCard7, widthRectCard7, heightRectCard7);
  rect(xRectCard8, yRectCard8, widthRectCard8, heightRectCard8);
  rect(xRectCard9, yRectCard9, widthRectCard9, heightRectCard9);
  rect(xRectCard10, yRectCard10, widthRectCard10, heightRectCard10);
  rect(xRectCard11, yRectCard11, widthRectCard11, heightRectCard11);
  rect(xRectCard12, yRectCard12, widthRectCard12, heightRectCard12);
  rect(xRectCard13, yRectCard13, widthRectCard13, heightRectCard13);
  rect(xRectCard14, yRectCard14, widthRectCard14, heightRectCard14);
  rect(xRectCard15, yRectCard15, widthRectCard15, heightRectCard15);
  rect(xRectCard16, yRectCard16, widthRectCard16, heightRectCard16);
  rect(xRectCard17, yRectCard17, widthRectCard17, heightRectCard17);
  rect(xRectCard18, yRectCard18, widthRectCard18, heightRectCard18);
  rect(xRectCard19, yRectCard19, widthRectCard19, heightRectCard19);
  rect(xRectCard20, yRectCard20, widthRectCard20, heightRectCard20);
  rect(xRectCard21, yRectCard21, widthRectCard21, heightRectCard21);
  rect(xRectCard22, yRectCard22, widthRectCard22, heightRectCard22);
  rect(xRectCard23, yRectCard23, widthRectCard23, heightRectCard23);
  rect(xRectCard24, yRectCard24, widthRectCard24, heightRectCard24);
  rect(xRectCard25, yRectCard25, widthRectCard25, heightRectCard25);
  rect(xRectCard26, yRectCard26, widthRectCard26, heightRectCard26);
  rect(xRectCard27, yRectCard27, widthRectCard27, heightRectCard27);
  rect(xRectCard28, yRectCard28, widthRectCard28, heightRectCard28);
  rect(xRectCard29, yRectCard29, widthRectCard29, heightRectCard29);
  rect(xRectCard30, yRectCard30, widthRectCard30, heightRectCard30);
  rect(xRectCard31, yRectCard31, widthRectCard31, heightRectCard31);
  rect(xRectCard32, yRectCard32, widthRectCard32, heightRectCard32);
  rect(xRectCard33, yRectCard33, widthRectCard33, heightRectCard33);
  rect(xRectCard34, yRectCard34, widthRectCard34, heightRectCard34);
  rect(xRectCard35, yRectCard35, widthRectCard35, heightRectCard35);
  rect(xRectCard36, yRectCard36, widthRectCard36, heightRectCard36);
  rect(xRectCard37, yRectCard37, widthRectCard37, heightRectCard37);
  rect(xRectCard38, yRectCard38, widthRectCard38, heightRectCard38);
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
