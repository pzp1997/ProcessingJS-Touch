// Gets <canvas> element
var canvas = document.getElementsByTagName("canvas")[0];

// Defines some default Processing variables in JavaScript
var displayWidth = window.innerWidth;
var displayHeight = window.innerHeight;

// Exposes TouchEvents to Processing via touchX, touchY and touches
var touchX = 0;
var touchY = 0;
var touches = [];
var touch = false;

var touchHandler = function (event) {
  event.preventDefault();

  touches = [];
  for (var i = 0; i < event.touches.length; i++) {
    touch = event.touches[i];
    touches.push({
      id: touch.identifier,
      x: touch.pageX,
      y: touch.pageY
    });
  }
};

canvas.addEventListener("touchstart", function (event) {
  touchX = event.changedTouches[0].pageX;
  touchY = event.changedTouches[0].pageY;
  touch = true;
  touchHandler(event);
}, false);
canvas.addEventListener("touchmove", function (event) {
  touchX = event.changedTouches[0].pageX;
  touchY = event.changedTouches[0].pageY;
  touchHandler(event);
}, false);
canvas.addEventListener("touchend", touchHandler, false);
canvas.addEventListener("touchcancel", touchHandler, false);

// Exposes DeviceOrientationEvents to Processing via tiltX, tiltY, and tiltZ (values of 0-360)
var tiltX = 0;
var tiltY = 0;
var tiltZ = 0;
var tilt = false;

window.addEventListener("deviceorientation", function (event) {
  tiltX = event.beta + 180;
  tiltY = event.gamma*2 + 180;
  tiltZ = event.alpha;
  tilt = true;
}, false);
