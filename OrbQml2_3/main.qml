import QtQuick 2.3
import QtQuick.Window 2.2

Window{
    visible: true
    width:640
    height:480
    title: "Orb Obliteration"
    Rectangle {
        Loader { id: pageLoader }
        id:screen
        width:parent.width
        height:parent.height
        state: "menu"
        Menu{
            id:menu
        }
        HowToPlay{
            id:howtoplay
            color:"transparent"
        }

        states: [
            State {
                name: "menu"
                PropertyChanges {target: menu; width:parent.width; height:parent.height;}
                PropertyChanges {target: howtoplay; width:0; height:0;}
                PropertyChanges {target: howtoplay; color:"transparent"}
            },
            State {
                name: "howtoplay"
                PropertyChanges {target: menu; width:0; height:0;}
                PropertyChanges {target: howtoplay; width:parent.width; height:parent.height;}
                PropertyChanges {target: howtoplay; color:"#AABBDDCC"}
            }
        ]
    }

}

