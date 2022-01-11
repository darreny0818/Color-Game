void game () {
  
  //coinflip for 50/50
  coinflip = int(random(0,2));
  
  background(0);
  fill(0);
  rect(150, 300, 300, 600);  
  fill(255);
  rect(450, 300, 300, 600);
 
  textSize(100);
  fill(255);
  text("YES", 150, 50);
  fill (0);
  text("NO", 450, 50);
  
  //there are a lot of fonts because i used a different font for the numbers and letters
  fill(255);
  textSize(25);
  text("SCORE:", 80, 550);
  textFont(buck);
  textSize(25);
  text(" " + score, 120, 550);
  textFont(utroligt);
  
  // randomize the word and color
  textSize(150); 
  fill(colors[c]);
  text(words[w], 300, 300);
  
  //visual timer
  tc = int(random(0,6));
  rectMode(CORNER);
  strokeWeight(2);
  stroke(timercolors[tc]);
  fill(0, 0); //transparency 
  rect(60, 490, 480, 20);
  noStroke ();
  fill(timercolors[tc]);
  rect(60, 490, timer, 20);
  rectMode(CENTER);
  
  //internal timer
  timer = timer - 3.5;
  
  if (timer <= 0) {
    mode = GAMEOVER;
  }
  
}

void gameClicks () {
  
  if (mouseX > 0 && mouseX < 300 && mouseY > 0 && mouseY < 600 && c==w || mouseX > 300 && mouseX < 600 && mouseY > 0 && mouseY < 600 && c != w) {
    
    if (coinflip == 0) {          //to make it 50/50
      w = int(random(0, 6));
      c = int(random(0, 6));
      while (w==c) {
        c = int(random(0, 6));    //to make sure c and w are different
      }
    } else if (coinflip == 1) {   //to make the 50% chance of w and c matching
    w = c = int(random(0, 6));
    }
    
    score = score + 1;
    timer = 480;
    
  } else {
    mode = GAMEOVER;
  }

}
