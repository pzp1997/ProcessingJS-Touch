IntDict c = new IntDict();
float pageY;

void setup() {
  size(400, 400);
  noFill();
  stroke(250,250,250);
  //strokeWeight(60);
  
  c.set("x", 0);
  c.set("x1", 300);
  c.set("y1", 25);
  c.set("cpx", 75);
  c.set("cpx1", 75);
  c.set("cpy", 925);
  c.set("cpy1", -925);
  c.set("cpy2", 1425);
}

void draw() {}

void animation() {
  background(137);
  translate(width/2,height/2);
  for (int i = 0; i < 12; i++) {
    curve(c.get("cpx"), c.get("cpy"), c.get("x"), pageY, c.get("x1"), c.get("y1"), c.get("cpx1"), c.get("cpy1"));
    curve(c.get("cpx"), c.get("cpy2"), c.get("x"), pageY, c.get("x1"), c.get("y1"), c.get("cpx1"), c.get("cpy1"));
    rotate(radians(30));
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
