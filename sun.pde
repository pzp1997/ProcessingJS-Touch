float x = 0;
float y = 0;
float x1 = 300;
float y1 = 25;
float cpx = 75; 
float cpx1 = 75;
float cpy = 925;
float cpy1 = -925;
float rays[];
float cpy2 = 1425;
float y2 = 150;
float pageY;

void setup() {
  size(400, 400);
  noFill();
  stroke(250,250,250);
  //strokeWeight(60);
}
void draw() {}

void animation() {
  background(137);
  translate(width/2,height/2);
  for (int i = 0; i < 12; i++) {
    curve(cpx, cpy , x, pageY, x1, y1, cpx1, cpy1);
    curve(cpx, cpy2, x, pageY, x1, y1, cpx1, cpy1);
    rotate(radians(30));
  }
}

void mousePressed() {
  pageY = mouseY;
}
void touchStart(TouchEvent e) {
  pageY = e.touches[0].offsetY;
}
