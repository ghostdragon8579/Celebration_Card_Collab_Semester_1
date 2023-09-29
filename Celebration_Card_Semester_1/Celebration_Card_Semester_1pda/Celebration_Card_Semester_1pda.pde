//Global Variables
int appWidth, appHeight;
//float xRectBackround, yRectBackround, widthRectBackround, heightRectBackround;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xRectIntroduction, yRectIntroduction, widthRectIntroduction, heightRectIntroduction;
float xRectreturn, yRectreturn, widthRectreturn, heightRectreturn;
float xRectphrase, yRectphrase, widthRectphrase, heightRectphrase;
float xRectinitials, yRectinitials, widthRectinitials, heightRectinitials;
float xClame, yClame, widthClame, heightClame;
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
  //
  xClame = appWidth*3/8;
  yClame = appHeight*3/4;
  widthClame = appWidth*1/4;
  heightClame = appHeight*1/10;
  //
  xRectIntroduction = appWidth*1/4;
  yRectIntroduction = appHeight*1/8;
  widthRectIntroduction = appWidth*1/2;
  heightRectIntroduction = appHeight*1/10;
  //
  //rect(xRectBackround, yRectBackround, widthRectBackround, heightRectBackround);
  rect(xRectIntroduction, yRectIntroduction, widthRectIntroduction, heightRectIntroduction);
  rect(xRectreturn, yRectreturn, widthRectreturn, heightRectreturn);
  rect(xRectphrase, yRectphrase, widthRectphrase, heightRectphrase);
  rect(xRectinitials, yRectinitials, widthRectinitials, heightRectinitials);
  fill(255, 0, 0);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  fill(0, 255, 0);
  rect(xClame, yClame, widthClame, heightClame);
  } //End setup
  //
void draw() {
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  //xRect2, yRect2, widthRect2, heightRect2
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  if ( mouseX>xClame && mouseX<xClame+widthClame && mouseY>yClame && mouseY<yClame+heightClame) println("clamed");
  //
} //End mousePressed
//
//End MAIN Program
