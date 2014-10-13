import QtQuick 2.0

Rectangle {
    id:game
    width: screen.width
    height: screen.height
    color: "black"
    Player{
        id:player
        width: parent.width/8
        height: parent.height/10
        x: parent.width/2-width/2
        y: parent.height-height
    }
    KeyHandle{

    }
}
