import QtQuick 1.1

Rectangle {
    id:menu
    RadialGrad{

    }
    Title{
        width:parent.width
        height:parent.height
    }
    ButtonList{
        width:parent.width/3
        height:parent.height/4*3
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
    PlayerInput{
        width:parent.width/3*2
        height:parent.height/4*3
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }
}

