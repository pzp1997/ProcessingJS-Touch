float pageY;

void setup() {
  size(400, 400);
  background(137);
  noFill();
  stroke(250,250,250);
}

void draw() {}

void animation() {
  background(137);
  translate(width/2,height/2);
  for (int i = 0; i < 12; i++) {
    curve(75, 925, 0, pageY, 300, 25, 75, -925);
    curve(75, 1425, 0, pageY, 300, 25, 75, -925);
    rotate(PI/6);
  }
}

void mousePressed() {
  pageY = mouseY;
  animation();
}
void touchStart(TouchEvent e) {
  pageY = e.touches[0].offsetY;
  animation();
}
