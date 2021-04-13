import QtQuick 2.0

Rectangle {
    anchors.fill: parent
    color: "tomato"

    signal changeItem()

    MouseArea{
        anchors.fill: parent
        onClicked: {
            changeItem()
        }
    }
}
