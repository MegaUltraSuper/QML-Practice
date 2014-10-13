import QtQuick 2.0

Rectangle{
    id: laser
    width: 3
    height: game.height/15
    y: player.y
    x: player.x + player.width/2 - width/2
    property int dy: Math.floor(Math.random() * (5)) - 30
    property int dx: Math.floor(Math.random() * (90)) - 45
    rotation:  Math.abs(laser.dy)/laser.dy*Math.abs(laser.dx)/laser.dx*(90 + Math.round(Math.atan(Math.abs(laser.dy/laser.dx))*180/Math.PI))
    color: "#" + Math.floor(Math.random()*(9))+"0"+Math.floor(Math.random()*(9))+"0"+Math.floor(Math.random()*(9))+"0"
    Timer {
        interval: 70; running: true; repeat: true
        onTriggered: {
            laser.x += laser.dx;
            laser.y += laser.dy;
            if (laser.y < 0){
                laser.dy *= -1;
                laser.rotation = Math.abs(laser.dy)/laser.dy*Math.abs(laser.dx)/laser.dx*(90 + Math.round(Math.atan(Math.abs(laser.dy/laser.dx))*180/Math.PI));
            }
            if (laser.y > game.height - laser.height){
                laser.dy *= -1;
                laser.rotation = Math.abs(laser.dy)/laser.dy*Math.abs(laser.dx)/laser.dx*(90 + Math.round(Math.atan(Math.abs(laser.dy/laser.dx))*180/Math.PI));
            }
            if (laser.x < 1){
                laser.dx *= -1;
                laser.rotation = Math.abs(laser.dy)/laser.dy*Math.abs(laser.dx)/laser.dx*(90 + Math.round(Math.atan(Math.abs(laser.dy/laser.dx))*180/Math.PI));
            }
            if (laser.x > game.width - 1){
                laser.dx *= -1;
                laser.rotation = Math.abs(laser.dy)/laser.dy*Math.abs(laser.dx)/laser.dx*(90 + Math.round(Math.atan(Math.abs(laser.dy/laser.dx))*180/Math.PI));
            }
        }
    }
}
