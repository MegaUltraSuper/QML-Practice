import QtQuick 1.1

Row{
    spacing: width/10
    width:parent.width
    height:parent.height
    Rectangle{
        z:1
        width:parent.height
        height:parent.height
        color:"#FFFFFF"
        border.width: 1
        border.color: "#AAAAAA"
        Image{
            id:check
            z:-1
            width:parent.width
            height:parent.height
            source:"images/check.png"
        }
        Rectangle{
            id: filter
            anchors.fill: parent
            color: "#00205030"
            z:3
        }
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                if(check.z == -1){
                    check.z = 2;
                } else if(check.z == 2){
                    check.z = -1
                }
            }
            onEntered: {
                filter.color = "#50203530";
                filter.z = 3;
            }
            onExited: {
                filter.color = "#00205030";
            }
        }
    }
    Text {
        z:1
        color:"#88CCEEDD"
        font.family: "Georgia"
        font.pixelSize: parent.height*.8
        text: removeSmallText("Yes, I would like to be host.")
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
