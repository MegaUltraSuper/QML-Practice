import QtQuick 1.1

Rectangle {
    color:"transparent"
    width: parent.width
    height: parent.height
    Column {
        spacing: parent.height/30
        width: parent.width/100*85
        height: parent.height
        anchors.right:parent.right
        Text{
            z:1
            color:"#88CCEEDD"
            font.family: "Georgia"
            font.pixelSize: parent.height/15*.8
            text:"Player Name:"
        }
        Rectangle{
            width:parent.width*.5
            height:parent.height/15
            x:parent.width*.1
            color:"#AA708075"
            border.width: 1
            border.color: "#AAAAAA"
            TextEdit{
                z:1
                color:"#88CCEEDD"
                font.family: "Georgia"
                font.pixelSize: parent.height*.8
                text:"Player One"
            }
        }
        Rectangle{
            id:spacer
            width:parent.width*.5
            height:parent.height/15
            color:"#00000000"
        }
        Text{
            z:1
            color:"#88CCEEDD"
            font.family: "Georgia"
            font.pixelSize: parent.height/15*.8
            text:"Host Multiplayer Match?"
        }
        Checkbox{
            width:parent.width*.5
            height:parent.height/15
            x:parent.width*.1
        }
    }
}
