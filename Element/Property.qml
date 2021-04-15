import QtQuick 2.0
import "../Advertisment"

Item {

    property alias loaderAlias: propertyItemLoader_Id

    function changeLoader(type){
        if(type === "0"){
            propertyItemLoader_Id.sourceComponent = fanSeatComponent_Id
        }
        else if(type === "1"){
            propertyItemLoader_Id.sourceComponent = enviromentalBilboardComponent_Id
        }
        else if(type === "2"){
            propertyItemLoader_Id.sourceComponent = centerCircleComponent_Id
        }
        else if(type === "3"){
            propertyItemLoader_Id.sourceComponent = groundComponent_Id
        }
    }

    Item{
        id:mainItem_Id
        anchors.left: leftBar_Id.right
        anchors.top: topBar_Id.bottom
        width: parent.width - leftBar_Id.width
        height: parent.height - topBar_Id.height

        Component.onCompleted: {propertyItemLoader_Id.sourceComponent = enviromentalBilboardComponent_Id}


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
