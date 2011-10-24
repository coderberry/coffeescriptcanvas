var HEIGHT, WIDTH, ctx, draw, dx, dy, init, x, y;
ctx = null;
WIDTH = 480;
HEIGHT = 320;
x = 150;
y = 150;
dx = 2;
dy = 4;
draw = function() {
  ctx.clearRect(0, 0, WIDTH, HEIGHT);
  ctx.beginPath();
  ctx.arc(x, y, 10, 0, Math.PI * 2, true);
  ctx.closePath();
  ctx.fill();
  x += dx;
  return y += dy;
};
init = function() {
  ctx = $('#canvas')[0].getContext("2d");
  return setInterval(draw, 10);
};
$(document).ready(function() {
  return init();
});