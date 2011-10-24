ctx = null # Stub the ctx variable for global reference

$(document).ready ->
  # get a reference to the canvas
  ctx = $('#canvas')[0].getContext("2d")

  # draw a green circle
  ctx.fillStyle = "#00A308";
  ctx.beginPath();
  ctx.arc(220, 220, 50, 0, Math.PI*2, true);
  ctx.closePath();
  ctx.fill();

  # draw a large red circle
  ctx.fillStyle = "#FF1C0A";
  ctx.beginPath();
  ctx.arc(130, 130, 100, 0, Math.PI*2, true);
  ctx.closePath();
  ctx.fill();

  # draw a yellow rectangle that is half transparent
  ctx.fillStyle = "rgba(255, 255, 0, .5)"
  ctx.beginPath();
  ctx.rect(15, 150, 120, 120);
  ctx.closePath();
  ctx.fill();