import QtQuick 2.0

Rectangle {
    RadialGrad{

    }
    Title{
        width:parent.width
        height:parent.height
    }
    Rectangle{
        width:parent.width
        height:parent.height/3*1.3
        y:parent.height/3
        color:"transparent"
        Text{
            width:parent.width
            wrapMode: Text.Wrap
            id:instructions
            z:1
            color:howtoplay.color
            font.family: "Georgia"
            font.pixelSize: parent.height/15*.8
            text: "Instructions
    Single-Player Game
        To Start a Single-player Game:
         - Start a single-player game using the New Game button or Load Game. Load Game starts when a saved game left off.
        Playing:
         - Destroy/Avoid orbs to survive as long as possible.
         - Fire using the space bar, move left and right using left and right keys.
         - Destroying an orb earns you points; Orbs that move faster are usually worth more points.
         - Get power-ups to increase fire-rate or gain extra lives. The falling ship picture increases lives, and the falling laser picture increases shooting speed for when you just hold down the space bar."
        }
    }
    Rectangle{
        width:parent.width/4
        height:parent.height/10
        x: parent.width/6*4
        y: parent.height/10*8
        color:"#50205040"
        Text{
            anchors.centerIn: parent
            z:1
            color:howtoplay.color
            font.family: "Georgia"
            font.pixelSize: parent.height/3
            text: "Return to Menu"
        }
        Rectangle{
            id: filter
            anchors.fill: parent
            color: "#00ffffff"
            border.width:1
            border.color: "transparent"
            z:1
        }
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                filter.color = "#18ffffff";
                filter.border.color = "#806010";
            }
            onExited: {
                filter.color = "#00ffffff";
                filter.border.color = "transparent";
            }
            onClicked: {
                screen.state="menu"
            }
        }
    }


}
