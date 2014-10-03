import QtQuick 1.1

Rectangle{
    id:screen
    width:1000
    height:500
    color:"#102040"
    TextE{
        id:t
    }
    FileMenu{
        id:file
        height:parent.height/10*3
        x: parent.width/2-width/2
        y:parent.height/10*2
    }
    ToolB{
        id:toolB
        height:parent.height/10
    }
    Rectangle{
        id:drawer
        y:file.height+toolB.height-10
        height:10
        width:parent.width
        color:"#203040"
        Image{
            id: arrowIcon
            source: "images/arrow.png"
            anchors.centerIn: parent
            height:10
            width:20
        }
        MouseArea{
            id: drawerMouseArea
            anchors.fill:parent
            onClicked:{
                if (screen.state === "DRAWER_CLOSED"){
                    screen.state = "DRAWER_OPEN";
                }
                else if (screen.state === "DRAWER_OPEN" || screen.state===""){
                    screen.state = "DRAWER_CLOSED";
                }
            }
        }
    }

    states:[
            State {
                name: "DRAWER_OPEN"
                PropertyChanges { target: file; y: screen.height/10*2}
                PropertyChanges { target: t; y: screen.height/10*3 + drawer.height+toolB.height}
                PropertyChanges { target: drawer; y: file.height+toolB.height}
                PropertyChanges { target: arrowIcon; rotation: 0}
            },
            State {
                name: "DRAWER_CLOSED"
                PropertyChanges { target: file; y:-height;  }
                PropertyChanges { target: t; y: drawer.height+toolB.height; height: screen.height - drawer.height }
                PropertyChanges { target: drawer; y: toolB.height }
                PropertyChanges { target: arrowIcon; rotation: 180 }
            }
        ]
}
