import QtQuick 2.0
import "../Advertisment"

Item {

    Item{
        id:mainItem_Id
        anchors.left: leftBar_Id.right
        anchors.top: topBar_Id.bottom
        width: parent.width - leftBar_Id.width
        height: parent.height - topBar_Id.height

        Component.onCompleted: {propertyItemLoader_Id.sourceComponent = fanSeatComponent_Id}

        Loader{
            id:propertyItemLoader_Id
            anchors.fill: parent
            focus: true
        }
    }

    Rectangle{
        id:topBar_Id
        width: parent.width
        height: 25
        color: "#3d3d3d"
    }

    Rectangle{
        id:leftBar_Id
        anchors.top: topBar_Id.bottom
        width: 30
        height: parent.height - y
        color: "#1f1f1f"
    }

    // + + + + + Declaring Advertisment Qml Files
    Component{
        id:fanSeatComponent_Id

        FanSeat{
            id:fanSeat_Id

            onChangeItem: {
                propertyItemLoader_Id.sourceComponent = enviromentalBilboardComponent_Id
            }
        }
    }

    Component{
        id:enviromentalBilboardComponent_Id

        EnviromentalBilboard{
            id:enviromentalBilboard_Id

            onChangeItem: {
                propertyItemLoader_Id.sourceComponent = fanSeatComponent_Id
            }
        }
    }

}
