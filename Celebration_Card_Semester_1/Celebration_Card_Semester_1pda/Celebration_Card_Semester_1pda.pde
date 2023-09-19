//Global Variables
int appWidth, appHeight;
float xRectBackround, yRectBackround, widthRectBackround, heightRectBackround;
float xRect2, yRect2, widthRect2, heightRect2;
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
  xRect2 = appWidth*1/4;
  yRect2 = appHeight*1/4;
  widthRect2 = appWidth*1/2;
  heightRect2 = appHeight*1/2;
} //End setup
//
void draw() {
  rect(xRectBackround, yRectBackround, widthRectBackround, heightRectBackround);
  rect(xRect2, yRect2, widthRect2, heightRect2);
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
  if ( mouseX>xRect2 && mouseX<xRect2+widthRect2 && mouseY>yRect2 && mouseY<yRect2+heightRect2 )   println("Button Activated");
  //
} //End mousePressed
//
//End MAIN Program
