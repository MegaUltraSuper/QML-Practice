import QtQuick 1.1

Item {
    anchors.fill: parent
    focus: true
    Component.onCompleted: {
        var component = Qt.createComponent("Laser.qml");
    }
    Keys.onPressed: {
        if (event.key == Qt.Key_Left) {
            player.x -= 10
        }
        if (event.key == Qt.Key_Right) {
            player.x += 10
        }
        if (event.key == Qt.Key_Space) {
            laser = component.createObject(game);
        }
    }
}
