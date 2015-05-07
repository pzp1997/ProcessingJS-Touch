float x, y;
final float EASING = 0.05;
final float DIAM = 60;
float pageX, pageY;

void setup() {
  size(300, 300);
  fill(#ffffff);
  noStroke();
}

void draw() {
  pageX = mouseX || touchX;
  pageY = mouseY || touchY;
  background(#444444);
  ellipse(x, y, DIAM, DIAM);
  x += (pageX - x) * EASING;
  y += (pageY - y) * EASING;
}
