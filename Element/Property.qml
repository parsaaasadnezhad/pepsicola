import QtQuick 2.0
import "../Advertisment"

Item {
    id:root
    property alias loaderAlias: propertyItemLoader_Id

    signal lengthChanged(int length)

    function changeLoader(type){
        var a = parseInt(type)
//        var a = type*1
        if(a%4 === 0){
            propertyItemLoader_Id.sourceComponent = fanSeatComponent_Id
        }
        else if(a%4 === 1){
            propertyItemLoader_Id.sourceComponent = enviromentalBilboardComponent_Id
        }
        else if(a%4 === 2){
            propertyItemLoader_Id.sourceComponent = centerCircleComponent_Id
        }
        else if(a%4 === 3){
            propertyItemLoader_Id.sourceComponent = groundComponent_Id
        }
    }

    Item{
        id:mainItem_Id
        anchors.left: leftBar_Id.right
        anchors.top: topBar_Id.bottom
        width: parent.width - leftBar_Id.width
        height: parent.height - topBar_Id.height

        Component.onCompleted: {changeLoader("0")}


        Loader{
            id:propertyItemLoader_Id
            anchors.fill: parent
            focus: true
            onLoaded: {
            }
        }
    }

    Rectangle{
        id:topBar_Id
        width: parent.width
        height: 10
        color: "#3d3d3d"

        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.SizeVerCursor
            property int myPressY
            property int length

            onPositionChanged: {
                if(pressed)
                {
                    length = mouseY - myPressY
                    root.lengthChanged(length)
                }
            }
            onPressed: {
                myPressY = mouseY
            }

        }
    }

    Rectangle{
        id:leftBar_Id
        anchors.top: topBar_Id.bottom
        width: 30
        height: parent.height - y
        color: "#1f1f1f"
    }

    // + + + + + Declaring Advertisment Qml Files
    //FanSeat Component
    Component{
        id:fanSeatComponent_Id

        FanSeat{
            id:fanSeat_Id
        }
    }
    //Enviromental Bilboard Component
    Component{
        id:enviromentalBilboardComponent_Id

        EnviromentalBilboard{
            id:enviromentalBilboard_Id
        }
    }

    //Center Circle Component
    Component{
        id:centerCircleComponent_Id

        CenterCircle{
            id:centerCircle_Id
        }
    }

    //Ground compenet
    Component{
        id:groundComponent_Id

        Ground{
            id:ground_Id
        }
    }
}
