import QtQuick 2.0

Rectangle {
    anchors.fill: parent
    color: "orange"

    signal changeItem()

    Text{
        text: "parsa joon"
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            changeItem()
        }
    }
}
