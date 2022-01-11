void intro () {
  
  background(0);
  
  //animated gif
  image(gif[f], 0, 0, width, height); 
  f++; 
  if (f == n) f = 0;
  
  fill (255);
  stroke(255);
  strokeWeight(thick);
  rect(300, 490, 150, 70);
  
  if (mouseX >= 225 && mouseX <=375 && mouseY >= 455 && mouseY <= 525) {
    thick = 6;
  } else {
    thick = 1;
  }
  
  textFont(utroligt);
  textSize(40);
  fill(0);
  text("ENTER", 300, 485);
  
  fill(255);
  textSize(90);
  text("COLOR GAME", 300, 75);
  
}

void introClicks () {
  
  if (mouseX > 225 && mouseX < 375 && mouseY > 455 && mouseY < 525) {
    mode = MATCH;
  }
  
}
