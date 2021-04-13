import QtQuick 2.0
import AdvertismentCpp 1.0

Rectangle {
    anchors.fill: parent
    color: "#454545"

    signal changeItem()

    FanSeatCpp{

    }


    MouseArea{
        anchors.fill: parent
        onClicked: {
            changeItem()
        }
    }
}
