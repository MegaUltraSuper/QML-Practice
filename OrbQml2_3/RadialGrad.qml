import QtQuick 2.0

Rectangle {
    z:2
    id:area
    width: parent.width
    height: parent.height
    color:"#00000000"
    Repeater {
        model: 50
        delegate: Rectangle {
            width: area.width/30*index
            height: area.height/30*index
            x:area.width/2 - width/2+area.width/6
            y:area.height/2 - height/2-area.height/6
            color: Qt.rgba(.89,1,.96,Math.pow((100-index),.5)/800)
            radius: width*.5
        }
    }
    Repeater {
        model: 30
        delegate: Rectangle {
            width: area.width/50*index
            height: area.height/50*index
            x:area.width/2 - width/2+area.width/6
            y:area.height/2 - height/2-area.height/6
            color: Qt.rgba(.89,1,.96,Math.pow((100-index),.4)/800)
            radius: width*.5
        }
    }
    Repeater {
        model: 30
        delegate: Rectangle {
            width: area.width/100*index
            height: area.height/100*index
            x:area.width/2 - width/2+area.width/6
            y:area.height/2 - height/2-area.height/6
            color: Qt.rgba(.89,1,.96,Math.pow((100-index),.5)/800)
            radius: width*.5
        }
    }
}
