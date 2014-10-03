//qml tutorial followed from qt documentation
import QtQuick 1.1

Rectangle {
    id: simplebutton
    width: 200; height: 105
    property color onHoverColor: "gold"
    property color borderColor: "white"
    property color buttonColor: "grey"
    property string label:"button"
    //determines the color of the button by using the conditional operator
    color: buttonColor
    border.color: borderColor
    radius:10
    Text{
        id: buttonLabel
        anchors.centerIn: parent
        text: parent.label
        font.pixelSize: parent.width/7
        font.family: "Georgia"
    }
    signal buttonClick()
    onButtonClick: {
        console.log(buttonLabel.text + " clicked" );
    }

    MouseArea{
        anchors.fill: parent
        onClicked: buttonClick()
        hoverEnabled: true
        onEntered: parent.border.color = parent.onHoverColor
        onExited:  parent.border.color = parent.borderColor
    }
}
