var touchX, touchY;

var touchHandler = function (event) {
  event.preventDefault();
  touchX = e.touches[0].offsetX;
  touchY = e.touches[0].offsetY;
}

document.addEventListener("touchstart", touchHandler);
document.addEventListener("touchmove", touchHandler);
