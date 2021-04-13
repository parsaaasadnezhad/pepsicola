import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import "Element"

ApplicationWindow {
    width: 450
    height: 700
    visible: true
    title: "spring"

    Component.onCompleted: {

    }

    Loader{
        id:loader_Id
    }

    TopList{
        id:topList_Id
        width: parent.width
        height: 200
    }

    Property{
        id:property_Id
        anchors.top: topList_Id.bottom
        anchors.topMargin: 5
        anchors.bottom: parent.bottom

        width: parent.width

    }

}
