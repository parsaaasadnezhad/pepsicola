import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import "Element"

ApplicationWindow {
    id:root
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

        onSendNameToAd: {
            property_Id.changeLoader(name)
        }
    }

    Property{
        id:property_Id
        anchors.top: topList_Id.bottom
        anchors.topMargin: 5
        anchors.bottom: parent.bottom
        width: parent.width

        onLengthChanged:{
            var value = topList_Id.height + length
            if(value < topList_Id.listViewAlias.count * 25 && value > 4*25 && value < root.height*4/5)
                topList_Id.height = topList_Id.height + length
        }
    }

}
