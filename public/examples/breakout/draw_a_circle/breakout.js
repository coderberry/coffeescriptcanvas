var ctx;
ctx = null;
$(document).ready(function() {
  ctx = $('#canvas')[0].getContext("2d");
  ctx.beginPath();
  ctx.arc(75, 75, 10, 0, Math.PI * 2, true);
  ctx.closePath();
  return ctx.fill();
});