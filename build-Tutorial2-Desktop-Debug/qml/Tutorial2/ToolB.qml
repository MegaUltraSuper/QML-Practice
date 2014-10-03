import QtQuick 1.1

Rectangle{
    id: labelList
    width:parent.width
    height:35
    color:"#204080"
    anchors.topMargin: parent
    z: 1
    Row{
        anchors.centerIn: parent
        spacing:parent.width/4
        SimpleButton{
            label: "File"
            id: fileButton
            buttonColor: "#80b0f0"
            width: 100
            height: 30
            onButtonClick: menuListView.currentIndex = 0
        }
        SimpleButton{
            id: editButton
            label: "Edit"
            buttonColor: "#80b0f0"
            width: 100
            height: 30
            onButtonClick:    menuListView.currentIndex = 1
        }
    }
}
