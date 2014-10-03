import QtQuick 1.1


Row{
    spacing: parent.width/12

    SimpleButton{
        id: loadButton
        width: parent.spacing*1.5
        height: loadButton.width*.6
        buttonColor: "lightgrey"
        label:"load"
    }
    SimpleButton{
        buttonColor: "grey"
        width: parent.spacing*1.5
        height: loadButton.width*.6
        id: saveButton
        label:"save"
    }
    SimpleButton{
        id: exitButton
        buttonColor: "darkgrey"
        width: parent.spacing*1.5
        height: loadButton.width*.6
        label:"exit"

        onButtonClick: Qt.quit()
    }
}
