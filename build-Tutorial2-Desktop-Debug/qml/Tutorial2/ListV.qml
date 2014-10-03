import QtQuick 1.1

ListView{
    id: menuListView

    //Anchors are set to react to window anchors
    anchors.fill:parent
    anchors.bottom: parent.bottom
    width:parent.width
    height: parent.height

    //the model contains the data
    model: menuListModel

    //control the movement of the menu switching
    snapMode: ListView.SnapOneItem
    orientation: ListView.Horizontal
    boundsBehavior: Flickable.StopAtBounds
    flickDeceleration: 5000
    highlightFollowsCurrentItem: true
    highlightMoveDuration:240
    highlightRangeMode: ListView.StrictlyEnforceRange
}
