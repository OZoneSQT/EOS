//Loading modules
var http = require('http');
var fs = require('fs');
var path = require('path');

var b0 = require('bonescript');
var b1 = require('bonescript');
var b2 = require('bonescript');
var b3 = require('bonescript');

// Create a variable calUSR0 USR0, which refers to P9_14
var LED0 = "USR0";  // Do as in assentment, full path
var LED1 = "USR1";
var LED2 = "USR2";
var LED3 = "USR3";

// Initialize the USR0, USR1, USR2, and USR3 as an OUTPUT
b0.pinMode(USR0, b0.OUTPUT);
b1.pinMode(USR1, b1.OUTPUT);
b2.pinMode(USR2, b2.OUTPUT);
b3.pinMode(USR3, b3.OUTPUT);


// Initialize the server on port 26005
// avalible ports: 26001-26005
var server = http.createServer(function (req, res) {
    // requesting files
    var file = '.'+((req.url=='/')?'/index.html':req.url);
    var fileExtension = path.extname(file);
    var contentType = 'text/html';
    // Uncoment if you want to add css to your web page
    /*
    if(fileExtension == '.css'){
        contentType = 'text/css';
    }*/
    fs.exists(file, function(exists){
        if(exists){
            fs.readFile(file, function(error, content){
                if(!error){
                    // Page found, write content
                    res.writeHead(200,{'content-type':contentType});
                    res.end(content);
                }
            });
        }
        else{
            // Page not found
            res.writeHead(404);
            res.end('Page not found');
        }
    });
}).listen(26005);

// Loading socket io module
var io = require('socket.io')(server);


// When communication is established, setup listener
io.on('connection', function (socket) {
    // socket.on('changeState0');
    //if ('changeState0') { socket.on('changeState0', handleChangeState0); } 
    //else if ('changeState1') { socket.on('changeState1', handleChangeState1); } 
    //else if ('changeState2') { socket.on('changeState2', handleChangeState2); }
    //else if ('changeState3') { socket.on('changeState3', handleChangeState3); }
    //else { console.log("listener error..."); } 
    
    socket.on('changeState0', handleChangeState0);
    socket.on('changeState1', handleChangeState1);
    socket.on('changeState2', handleChangeState2);
    socket.on('changeState3', handleChangeState3);

});


// Change led state when a button is pressed
function handleChangeState0(data) {
    var newData = JSON.parse(data);
    console.log("LED0 = " + newData.state);
    // turns the LED ON or OFF
    b0.digitalWrite(LED0, newData.state);
}

// Change led state when a button is pressed
function handleChangeState1(data) {
    var newData = JSON.parse(data);
    console.log("LED1 = " + newData.state);
    // turns the LED ON or OFF
    b1.digitalWrite(LED1, newData.state);
}

// Change led state when a button is pressed
function handleChangeState0(data) {
    var newData = JSON.parse(data);
    console.log("LED2 = " + newData.state);
    // turns the LED ON or OFF
    b2.digitalWrite(LED2, newData.state);
}

// Change led state when a button is pressed
function handleChangeState3(data) {
    var newData = JSON.parse(data);
    console.log("LED3 = " + newData.state);
    // turns the LED ON or OFF
    b3.digitalWrite(LED3, newData.state);
}


// Displaying a console message for user feedback
//server.listen(console.log("Server Running ..."));
console.log("Server Running ...");