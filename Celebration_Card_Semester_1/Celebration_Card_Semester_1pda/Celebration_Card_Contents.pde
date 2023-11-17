void CardContents () {
  //
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xClame, yClame, widthClame, heightClame);
  rect(xRectCard1, yRectCard1, widthRectCard1, heightRectCard1);
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
  if ( Redcontrol==true ) {
    tint ( 1, 255, 255 );
  } else {
  }
  //
  if ( Greencontrol==true ) {
    tint ( 255, 1, 255 );
  } else {
  }
  //
  if ( Bluecontrol==true ) {
    tint ( 255, 255, 1 );
  } else {
  }
  //
   if ( nightmode==true ) {
    tint (NightmodeRed, NightmodeGreen, NightmodeBlue);
  } else {
  }
  //
  image(rectTree, xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  color SnowFallcolor = color(255, 255, 255);
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  fill(SnowFallcolor);
  SnowFallDiameter = random(smallerDimension*1/50, smallerDimension*1/35);
  xSnowFall = random(xRectBackground+(SnowFallDiameter/2), xRectBackground+widthRectBackground-(SnowFallDiameter/2));
  ySnowFall = random(yRectBackground+(SnowFallDiameter/2), yRectBackground+heightRectBackground-(SnowFallDiameter/2));
  noStroke();
  if (SnowFall==true) ellipse(xSnowFall, ySnowFall, SnowFallDiameter, SnowFallDiameter);
  stroke(1);
  fill(resetDefaultInk);
  //
  fill(pine);
  rect(xRectIntroduction, yRectIntroduction, widthRectIntroduction, heightRectIntroduction);
  fill(pine);
  rect(xRectTree, yRectTree, widthRectTree, heightRectTree);
  image(rectClame, xClame, yClame, widthClame, heightClame);
  image(rectQuit, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  image(rectReturn, xRectCard1, yRectCard1, widthRectCard1, heightRectCard1);
  //
  fill(crimson);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(IntroductionFont, 50); 
  text(Introduction, xRectIntroduction, yRectIntroduction, widthRectIntroduction, heightRectIntroduction);
  fill(resetDefaultInk);
  //
  fill(crimson);
  textAlign(CENTER, CENTER); 
  size = 80;
  textFont(InitialFont, 50); 
  text(Initials, xRectTree, yRectTree, widthRectTree, heightRectTree);
  fill(resetDefaultInk);
}
