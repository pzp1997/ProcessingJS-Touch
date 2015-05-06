var touchX, touchY;

var touchHandler = function (event) {
  event.preventDefault();
  touchX = event.changedTouches[0].pageX;
  touchY = event.changedTouches[0].pageY;
}

document.addEventListener("touchstart", touchHandler);
document.addEventListener("touchmove", touchHandler);
