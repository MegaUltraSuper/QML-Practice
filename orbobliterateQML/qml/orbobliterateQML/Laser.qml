import QtQuick 1.1

Item{
    id: laser
    width: game.width/50
    height: game.height/15
    y: player.y
    x: player.x + player.width/2
    Image{
        anchors.fill: parent
        source: "images/bullet.gif"
    }
    Timer {
        interval: 50; running: true; repeat: true
        onTriggered: {
            laser.x += 0;
            laser.y -= 4;
        }
    }
}
