void CardFront () {
  //
  fill(Gray);
  rect(xFrontDeadSpace, yFrontDeadSpace, widthFrontDeadSpace, heightFrontDeadSpace);
  fill(resetDefaultInk);
  rect(xFrontBackground, yFrontBackground, widthFrontBackground, heightFrontBackground);
  image(FrontBackgroundImage, xFrontBackground, yFrontBackground, widthFrontBackground, heightFrontBackground);
  rect(xFrontText, yFrontText, widthFrontText, heightFrontText);
  rect(xFrontImage, yFrontImage, widthFrontImage, heightFrontImage);
  rect(xOpenCard, yOpenCard, widthOpenCard, heightOpenCard);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>xOpenCard && mouseX<xOpenCard+widthOpenCard && mouseY>yOpenCard && mouseY<yOpenCard+heightOpenCard) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xOpenCard, yOpenCard, widthOpenCard, heightOpenCard);
    fill(resetDefaultInk);
  }
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, size); 
  text(Greetings, xFrontText, yFrontText, widthFrontText, heightFrontText);
  fill(resetDefaultInk);
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, size); 
  text(OpenQuestion, xOpenCard, yOpenCard, widthOpenCard, heightOpenCard);
  fill(resetDefaultInk);
  //
  image(FrontImage, xFrontImage, yFrontImage, widthFrontImage, heightFrontImage);
  //
}
