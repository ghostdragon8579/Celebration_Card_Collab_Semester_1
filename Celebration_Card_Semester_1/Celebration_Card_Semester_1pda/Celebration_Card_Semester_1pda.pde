//Global Variables
PImage rectQuit;
PImage rectClame;
PImage rectTree;
PFont IntroductionFont;
PFont InitialFont;
String Introduction = "Merry Christmas!";
String Initials = "Eric Barnes";
color verdant=#00F512;
color crimson=#B90202, resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
int brightnessNumber=255;
//float xRectBackround, yRectBackround, widthRectBackround, heightRectBackround;
float xRectTree, yRectTree, widthRectTree, heightRectTree;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xRectIntroduction, yRectIntroduction, widthRectIntroduction, heightRectIntroduction;
float xRectreturn, yRectreturn, widthRectreturn, heightRectreturn;
float xRectphrase, yRectphrase, widthRectphrase, heightRectphrase;
float xRectinitials, yRectinitials, widthRectinitials, heightRectinitials;
float xClame, yClame, widthClame, heightClame;
float xClameOutline, yClameOutline, widthClameOutline, heightClameOutline;
Boolean brightnessControl=false;
Boolean nightmode=false;
Boolean Redcontrol=false;
Boolean Bluecontrol=false;
Boolean Greencontrol=false;
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width:"+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(1000, 800);
 int appWidth = width;
 int appHeight = height;
  //
  //Population
  //xRectBackround = appWidth*0;
  //yRectBackround = appHeight*0;
  //widthRectBackround = appWidth-1;
  //heightRectBackround = appHeight-1;
  //
  xRectQuit = appWidth*18/20-1;
  yRectQuit = appHeight*0/20;
  widthRectQuit = appWidth*1/10;
  heightRectQuit = appHeight*1/10;
  rectQuit = loadImage("../Images for the Celebration Card/exet.png");
  //
  xClame = appWidth*3/8;
  yClame = appHeight*3/4;
  widthClame = appWidth*1/4;
  heightClame = appHeight*1/8;
  rectClame = loadImage("../Images for the Celebration Card/next.png");
  //
  xRectIntroduction = appWidth*1/4;
  yRectIntroduction = appHeight*1/6;
  widthRectIntroduction = appWidth*1/2;
  heightRectIntroduction = appHeight*1/8;
  //
  xRectTree = appWidth*1/4;
  yRectTree = appHeight*1/3;
  widthRectTree = appWidth*2/4;
  heightRectTree = appHeight*1/3;
  //rectTree = loadImage("../Images for the Celebration Card/");
  //
  //
  //rect(xRectBackround, yRectBackround, widthRectBackround, heightRectBackround);
  rect(xRectTree, yRectTree, widthRectTree, heightRectTree);
  rect(xRectreturn, yRectreturn, widthRectreturn, heightRectreturn);
  rect(xRectphrase, yRectphrase, widthRectphrase, heightRectphrase);
  rect(xRectinitials, yRectinitials, widthRectinitials, heightRectinitials);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xClameOutline, yClameOutline, widthClameOutline, heightClameOutline);
  fill(0, 200, 0);
  rect(xRectIntroduction, yRectIntroduction, widthRectIntroduction, heightRectIntroduction);
  fill(0, 255, 0);
  rect(xClame, yClame, widthClame, heightClame);
  //
  IntroductionFont = createFont("Comic Sans MS", 55);
  InitialFont = createFont("Papyrus", 55);
  } //End setup
  //
void draw() {
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xClame, yClame, widthClame, heightClame);
  //
   if ( brightnessControl==true );
  {
    if ( brightnessNumber<0 ) {
      brightnessNumber=0;
    } else if ( brightnessNumber>255 ) {
      brightnessNumber=255;
    } else {
      //Empty ELSE
    }
    tint (255, brightnessNumber);
  }
  //
  if ( nightmode==true ) {
    tint ( 125, 125, 40 );
  } else {
  }
  //
  if ( Redcontrol==true ) {
    tint ( 1, 255, 255 );
  } else {
  }
  //
  if ( Bluecontrol==true ) {
    tint ( 255, 1, 255 );
  } else {
  }
  //
  image(rectClame, xClame, yClame, widthClame, heightClame);
  image(rectQuit, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //
  fill(crimson);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(IntroductionFont, 50); 
  text(Introduction, xRectIntroduction, yRectIntroduction, widthRectIntroduction, heightRectIntroduction);
  fill(resetDefaultInk);
  //
  fill(verdant);
  textAlign(CENTER, CENTER); 
  size = 80;
  textFont(InitialFont, 50); 
  text(Initials, xRectGrinch, yRectGrinch, widthRectGrinch, heightRectGrinch);
  fill(resetDefaultInk);
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
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  if ( mouseX>xClame && mouseX<xClame+widthClame && mouseY>yClame && mouseY<yClame+heightClame) println("clamed");
  //
} //End mousePressed
//
//End MAIN Program
