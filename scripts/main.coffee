updateClock = -> 
  time = (new Date()).toLocaleTimeString()
  document.getElementById("clock").innerHTML = time

setInterval updateClock, 1000