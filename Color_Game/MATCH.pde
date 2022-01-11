void match () { 
  
  //intro screen #2 with the loading bar 
  
  background(0);
  
  fill(255);
  textSize(75);
  text("DO THE", 300, 100);
  text("COLORS MATCH?", 300, 200);
  
  //timer bar
  rectMode(CORNER); 
  strokeWeight(2);
  stroke(255);
  fill(0);
  rect(60, 390, 480, 20);
  fill(255);
  rect(60, 390, bar, 20);
  rectMode(CENTER);
  
  //internal timer
  bar = bar - 1.6; 
 
  if (bar <= 0) {
    mode = GAME;
  }
 
  //back button
  strokeWeight(thick2);
  stroke(255);
  circle(50, 50, 50); 
  fill(0);
  stroke(0);
  strokeWeight(3);
  line(35, 50, 65, 50);
  line(35, 50, 50, 35);
  line(35, 50, 50, 65);
  
  if (dist(50, 50, mouseX, mouseY) <= 25) {
    thick2 = 9;
  } else {
    thick2 = 3;
  }
  
  
}

void matchClicks () {
  
  if (dist(50, 50, mouseX, mouseY) <=25) {
    mode = INTRO;
    bar = 480;
  }
  
}
