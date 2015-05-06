var touchX, touchY;

var touchHandler = function (event) {
  touchX = event.touches[0].offsetX;
  touchY = event.touches[0].offsetY;
  event.preventDefault();
}

document.addEventListener("touchstart", touchHandler);
document.addEventListener("touchmove", touchHandler);

void setup() {
  size(window.innerWidth, window.innerHeight);
  noFill();
  stroke(250, 250, 250);
}

void draw() {
  background(137);
  translate(width/2,height/2);
  for (int i = 0; i < 12; i++) {
    curve(75, 925, 0, (touchX+touchY)/2, 300, 25, 75, -925);
    curve(75, 1425, 0, (touchX+touchY)/2, 300, 25, 75, -925);
    rotate(PI/6);
  }
}
