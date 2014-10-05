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
            text: removeSmallText("Player Name:")
            function removeSmallText(text){
                if (parent.width == 0){
                    return "";
                }
                else{
                    return text;
                }
            }
        }
        Rectangle{
            width:parent.width*.5
            height:parent.height/15
            x:parent.width*.1
            color:"#AA708075"
            border.width: 1
            border.color: "#AAAAAA"
            Rectangle{
                id: filter
                anchors.fill: parent
                color: "#00205030"
                z:3
            }
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    filter.color = "#50203530";
                    filter.z = 3;
                }
                onExited: {
                    filter.color = "#00205030";
                }
            }
            TextEdit{
                z:1
                color:"#88CCEEDD"
                font.family: "Georgia"
                font.pixelSize: parent.height*.8
                text: removeSmallText("Player 1")
                function removeSmallText(text){
                    if (parent.width == 0){
                        return "";
                    }
                    else{
                        return text;
                    }
                }
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
            text: removeSmallText("Host Multiplayer Match?")
            function removeSmallText(text){
                if (parent.width == 0){
                    return "";
                }
                else{
                    return text;
                }
            }
        }
        Checkbox{
            width:parent.width*.5
            height:parent.height/15
            x:parent.width*.1
        }
    }
}
