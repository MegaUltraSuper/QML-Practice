import QtQuick 1.1

Item {
    anchors.fill: parent
    focus: true
    Keys.onPressed: {
        if (event.key == Qt.Key_Left) {
            player.x -= 10
        }
        if (event.key == Qt.Key_Right) {
            player.x += 10
        }
        if (event.key == Qt.Key_Space) {
            var component = Qt.createComponent("Laser.qml");
            laser = component.createObject(game);
        }
    }
}
