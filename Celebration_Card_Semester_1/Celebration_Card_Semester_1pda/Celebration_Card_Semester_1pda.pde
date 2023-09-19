//Global Variables
int appWidth, appHeight;
float xRectBackround, yRectBackround, widthRectBackround, heightRectBackround;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width:"+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(600, 400);
 int appWidth = width;
 int appHeight = height;
  //
  //Population
  xRectBackround = appWidth*0;
  yRectBackround = appHeight*0;
  widthRectBackround = appWidth-1;
  heightRectBackround = appHeight-1;
  xRectQuit = appWidth*1/4;
  yRectQuit = appHeight*1/4;
  widthRectQuit = appWidth*1/2;
  heightRectQuit = appHeight*1/2;
} //End setup
//
void draw() {
  rect(xRectBackround, yRectBackround, widthRectBackround, heightRectBackround);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
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
  //
} //End mousePressed
//
//End MAIN Program
