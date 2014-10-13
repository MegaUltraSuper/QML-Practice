import QtQuick 2.0

Item {
    id: handle
    property string leftpressed: "false"
    property string rightpressed: "false"
    property string uppressed: "false"
    property string downpressed: "false"
    property string spacepressed: "false"
    property int lasercount: 0

    anchors.fill: parent
    focus: true
    Keys.onPressed: {
        if (event.key === Qt.Key_Left) {
            handle.leftpressed = "true";
        }
        if (event.key === Qt.Key_Right) {
            handle.rightpressed = "true";
        }
        if (event.key === Qt.Key_Up) {
            handle.uppressed = "true";
        }
        if (event.key === Qt.Key_Down) {
            handle.downpressed = "true";
        }
        if (event.key === Qt.Key_Space) {
            handle.spacepressed = "true";
        }
    }
    Keys.onReleased: {
        if (event.key === Qt.Key_Left) {
            handle.leftpressed = "false";
        }
        if (event.key === Qt.Key_Right) {
            handle.rightpressed = "false";
        }
        if (event.key === Qt.Key_Up) {
            handle.uppressed = "false";
        }
        if (event.key === Qt.Key_Down) {
            handle.downpressed = "false";
        }
        if (event.key === Qt.Key_Space) {
            handle.spacepressed = "false";
        }
    }
    Timer{
        interval: 80; running: true; repeat: true
        onTriggered: {
            //fire laser
            if (handle.spacepressed === "true" && handle.lasercount > 2){
                var component = Qt.createComponent("Laser.qml");
                var laser = component.createObject(game);
                handle.lasercount = 0;
            } else {
                handle.lasercount++;
            }
            //move left
            if (handle.leftpressed === "true"){
                player.x -= 15;
                if (player.x < 0){
                    player.x = 0;
                }
            }
            //move right
            if (handle.rightpressed === "true"){
                player.x += 15;
                if (player.x > game.width-player.width){
                    player.x = game.width-player.width;
                }
            }
            //move up
            if (handle.uppressed === "true"){
                player.y -= 15;
                if (player.y < 0){
                    player.y = 0;
                }
            }
            //move down
            if (handle.downpressed === "true"){
                player.y += 15;
                if (player.y > game.height-player.height){
                    player.y = game.height-player.height;
                }
            }

        }
    }
}
