import QtQuick 2.0

Column{
    spacing:parent.height/25
    MenuButton{
        id:newgame
        Image{
            width:parent.width
            height:parent.height
            source:"images/NewGame.png"
        }
        MouseArea {
           anchors.fill: parent
           onClicked: {
               var component = Qt.createComponent("SinglePlayer.qml");
               var win = component.createObject(screen);
               win.show();
           }
        }
    }
    MenuButton{
        id:multiplayer
        Image{
            width:parent.width
            height:parent.height
            source:"images/Multiplayer.png"
        }
    }
    MenuButton{
        id:loadgame
        Image{
            width:parent.width
            height:parent.height
            source:"images/LoadGame.png"
        }
    }
    MenuButton{
        id:leaderboard
        Image{
            width:parent.width
            height:parent.height
            source:"images/Leaderboard.png"
        }
    }
    MenuButton{
        id:howtoplay
        color:"green"
        Image{
            width:parent.width
            height:parent.height
            source:"images/HowtoPlay.png"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                screen.state="howtoplay"
            }
        }
    }
}
