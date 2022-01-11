void gameover () {
  
  background (255, 0, 0);
  
  fill(255);
  textSize(100);
  text("GAMEOVER", 300, 200);
  
  //return button
  stroke(255);
  strokeWeight(thick1);
  rect(300, 450, 150, 70);
  noStroke();
  textSize(35);
  fill(0);
  text("RETURN", 300, 445);
  
  if (mouseX >= 225 && mouseX <=375 && mouseY >= 415 && mouseY <= 485) {
    thick1 = 6;
  } else {
    thick1 = 1;
  }
  
  //highscore
  if (score < high) {
    high = high;
  }
  
  if (score > high) {
    high = score;
  }
 
  //displaying score and high score
  textSize(30);
  text("SCORE: ", 300, 310);
  text("HIGHSCORE: ", 300, 360);
  textFont(buck);
  textSize(30);
  text(" " + score, 345, 310);
  text(" " + high, 370, 360);
  textFont(utroligt);
  
}

void gameoverClicks () {
  
  if (mouseX > 225 && mouseX < 375 && mouseY > 415 && mouseY < 485) {
    mode = INTRO;
    score = 0;
    bar = 480;
    timer = 480;
  }
  
}
