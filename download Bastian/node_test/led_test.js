var b = require("bonescript");
var led = "USR3";
var state = 0;

b.pinMode(led,'out');
toggleLED = function() {
	state = state ? 0 : 1;
	b.digitalWrite(led,state);
};

timer = setInterval(toggleLED, 1000);

stopTimer = function() {
	clearInterval(timer);
};

setTimeout(stopTimer, 10000);
