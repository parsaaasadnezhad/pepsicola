import QtQuick 2.0
import QtGraphicalEffects 1.12
import QtQuick.Controls 2.12
import AdvertismentCpp 1.0

Rectangle {
    anchors.fill: parent
    color: "#454545"

    signal changeItem()

    FanSeatCpp{

    }

    Item{
        anchors.centerIn: parent
        width:   parent.width - 20
        height: parent.height - 20
        z:2

        Column{
            id:column_Id
            anchors.fill: parent
            spacing: 5
            //0
            Row{
                Label{text: "Fanseat"}
            }

            //1
            Rectangle{
                id:sizeRectangle_Id
                property bool isExpanded: false
                width: parent.width
                height: isExpanded ? 100 : 30
                color: "transparent"
                border.width: 1
                border.color: "gray"
                Row{
                    y:10
                    Item{width: 10 ; height: 10}
                    Image{
                        id:sizeRectImage_Id
                        source: "qrc:/Icon/Icon/arrow.svg"
                        sourceSize: "10x10"
                        fillMode: Image.PreserveAspectFit
                        rotation: sizeRectangle_Id.isExpanded ? 90 : 0
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                sizeRectangle_Id.isExpanded = !sizeRectangle_Id.isExpanded
                            }
                        }
                        Behavior on rotation {NumberAnimation{duration:500}}
                    }
                    Text{text: "size"}
                }
                Behavior on height {NumberAnimation{duration:500}}
            }

            //1
            Rectangle{
                id:sizeRectangle2_Id
                property bool isExpanded: false
                width: parent.width
                height: isExpanded ? 100 : 30
                color: "transparent"
                border.width: 1
                border.color: "gray"
                Row{
                    y:10
                    Item{width: 10 ; height: 10}
                    Image{
                        id:sizeRectImage2_Id
                        source: "qrc:/Icon/Icon/arrow.svg"
                        sourceSize: "10x10"
                        fillMode: Image.PreserveAspectFit
                        rotation: sizeRectangle2_Id.isExpanded ? 90 : 0
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                sizeRectangle2_Id.isExpanded = !sizeRectangle2_Id.isExpanded
                            }
                        }
                        Behavior on rotation {NumberAnimation{duration:500}}
                    }
                    Text{text: "size"}
                }
                Behavior on height {NumberAnimation{duration:500}}
            }
        }
    }

    //    MouseArea{
    //        anchors.fill: parent
    //        onClicked: {
    //            changeItem()
    //        }
    //    }


    // + + + + + RADIAL GRADIENT
    RadialGradient {
        width: parent.width
        height: parent.height
        horizontalOffset: width /4
        verticalOffset:height /4
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#552e7d32" }
            GradientStop { position: 0.5; color: "#55454545" }
        }
    }
    //2
    RadialGradient {
        width: parent.width
        height: parent.height
        horizontalOffset: -width /4
        verticalOffset:-height /4
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#552e7d32" }
            GradientStop { position: 0.5; color: "#55454545" }
        }
    }
    //3
    RadialGradient {
        width: parent.width
        height: parent.height
        horizontalOffset: width /4
        verticalOffset:-height /4
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#552e7d32" }
            GradientStop { position: 0.5; color: "#55454545" }
        }
    }
    //4
    RadialGradient {
        width: parent.width
        height: parent.height
        horizontalOffset: -width /4
        verticalOffset:+height /4
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#552e7d32" }
            GradientStop { position: 0.5; color: "#55454545" }
        }
    }
}
