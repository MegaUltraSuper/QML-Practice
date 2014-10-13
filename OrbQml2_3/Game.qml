import QtQuick 2.0

Rectangle {
    id:base
    width: screen.width
    height:screen.height
    Loader{
        id: mode
        source: "SinglePlayer.qml"
    }
}
