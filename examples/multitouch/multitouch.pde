void setup() {
  size(displayWidth, displayHeight);
  fill(255);
  noStroke();
}

void draw() {
  if (touch) {
    for (int i = 0; i < touches.length; i++) {
      ellipse(touches[i].x, touches[i].y, 60, 60);
    }
  } else {
    textSize(40);
    textAlign(CENTER);
    background(60);
    text("Touch not supported on this device.", width/2, height/2);
  }
}
