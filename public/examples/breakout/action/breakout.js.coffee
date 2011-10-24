ctx    = null # stub the ctx variable for global reference
WIDTH  = 480  # stub the canvas width variable
HEIGHT = 320  # stub the canvas height variable
x      = 150  # initial position on the x axis
y      = 150  # initial position on the y axis
dx     = 2    # velocity on the x axis
dy     = 4    # velocity on the y axis
  
draw = ->
  # clear out the canvas
  ctx.clearRect(0, 0, WIDTH, HEIGHT)

  # draw a circle
  ctx.beginPath()
  ctx.arc(x, y, 10, 0, Math.PI*2, true)
  ctx.closePath()
  ctx.fill()
  
  # Update the x and y position for next redraw
  x += dx
  y += dy
  
init = ->
  ctx = $('#canvas')[0].getContext("2d")

  # Call the 'draw' function every 10 milliseconds, creating 
  # the illusion of movement
  setInterval(draw, 10)
    
$(document).ready ->
  init()