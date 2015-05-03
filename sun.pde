float pageX, pageY;

void setup() {
  size(window.innerWidth, window.innerHeight);
  noFill();
  stroke(250, 250, 250);
}

void draw() {
  background(137);
  translate(width/2,height/2);
  for (int i = 0; i < 12; i++) {
    curve(75, 925, 0, pageX+pageY, 300, 25, 75, -925);
    curve(75, 1425, 0, pageX+pageY, 300, 25, 75, -925);
    rotate(PI/6);
  }
}

void mousePressed() {
  pageY = mouseY;
}
void mouseDragged() {
  pageY = mouseY;
}
void touchStart(e) {
  pageY = e.touches[0].offsetY;
}
void touchMoved(e) {
  pageY = e.touches[0].offsetY;
}

