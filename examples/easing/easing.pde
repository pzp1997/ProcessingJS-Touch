float x, y;
final float EASING = 0.05;
final float DIAM = 60;
float pageX, pageY;

void setup() {
  size(window.innerWidth, window.innerHeight);
  fill(#ffffff);
  noStroke();
}

void draw() {
  pageX = (touchX !== undefined) ? touchX : mouseX;
  pageY = (touchY !== undefined) ? touchY : mouseY;
  background(#444444);
  ellipse(x, y, DIAM, DIAM);
  x += (pageX - x) * EASING;
  y += (pageY - y) * EASING;
}
