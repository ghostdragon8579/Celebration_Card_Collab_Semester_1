void ExitConfirmation () {
  //
  rect(ConfirmationBackgroundx, ConfirmationBackgroundy, ConfirmationBackgroundwidth, ConfirmationBackgroundheight);
  rect(xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes);
  rect(xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo);
  rect(xConfirmationQuestion, yConfirmationQuestion, widthConfirmationQuestion, heightConfirmationQuestion);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>xConfirmationYes && mouseX<xConfirmationYes+widthConfirmationYes && mouseY>yConfirmationYes && mouseY<yConfirmationYes+heightConfirmationYes) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes);
    fill(resetDefaultInk);
  } else if (mouseX>xConfirmationNo && mouseX<xConfirmationNo+widthConfirmationNo && mouseY>yConfirmationNo && mouseY<yConfirmationNo+heightConfirmationNo) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo);
    fill(resetDefaultInk);
  }
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, 50); 
  text(Yes, xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes);
  fill(resetDefaultInk);
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, 50); 
  text(No, xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, 40); 
  text(Question, xConfirmationQuestion, yConfirmationQuestion, widthConfirmationQuestion, heightConfirmationQuestion);
  fill(resetDefaultInk);
  //
}
