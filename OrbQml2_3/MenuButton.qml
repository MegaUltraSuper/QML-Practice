import QtQuick 2.0


Rectangle {
    id:menubutton
    width: parent.width/100*89
    height: parent.height/7
    radius: parent.width/100+parent.height/100
    clip:true
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
    }
}
