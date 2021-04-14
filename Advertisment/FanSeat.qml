import QtQuick 2.0
import QtGraphicalEffects 1.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import AdvertismentCpp 1.0
import "../AwesomeQml"

Rectangle {

    property string modeRectangleItemName

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
            //01

            RectangleItem{
                id:rectangleItem_Id
                radius: 0;width: parent.width;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                fillColor: "#232323"
                topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true

                Row{
                    anchors.fill: parent
                    spacing: 10
                    RectangleItem{
                        id:modeRectItem_Id
                        radius: 0;width: 40;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                        fillColor: "#353535"
                        topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                        Label{anchors.centerIn: parent ; text: "Mode" ; font.pointSize: 8}
                    }
                    Text{
                        anchors.verticalCenter: parent.verticalCenter
                        width: parent.width - modeRectItem_Id.width
                        text: "name"
                    }
                }
            }


            //1
            Rectangle{
                id:sizeRectangle_Id
                property bool isExpanded: false
                width: parent.width
                height: isExpanded ? 160 : 30
                color: "transparent"
                border.width: 1
                border.color: "gray"

                Image{
                    id:sizeRectImage_Id
                    y:10 ; x:10
                    source: "qrc:/Icon/Icon/arrow.svg"
                    sourceSize: "10x10"
                    fillMode: Image.PreserveAspectFit
                    rotation: sizeRectangle_Id.isExpanded ? 90 : 0
                    MouseArea{
                        anchors.fill: parent
                        cursorShape: "PointingHandCursor"
                        onClicked: {
                            sizeRectangle_Id.isExpanded = !sizeRectangle_Id.isExpanded
                        }
                    }
                    Behavior on rotation {NumberAnimation{duration:500}}
                }
                Text{
                    y:5
                    anchors.left: sizeRectImage_Id.right
                    anchors.leftMargin: 5
                    text: "size"
                }

                Item{
                    anchors.horizontalCenter:parent.horizontalCenter
                    anchors.top: sizeRectImage_Id.bottom
                    anchors.topMargin: 10
                    anchors.bottom: sizeRectangle_Id.bottom
                    anchors.bottomMargin: 10
                    width: parent.width - 20
//                    height: parent.height - 20

                    Column{
                        anchors.fill: parent
                        opacity: sizeRectangle_Id.isExpanded ? 1 : 0
                        //bad code has beed started. i should put this lines to another qml file
                        RectangleItem{
                            id:rectangleItem3_Id
                            radius: 0;width: parent.width;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                            fillColor: "#232323"
                            topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                            opacity: 0.8
                            Row{
                                anchors.fill: parent
                                spacing: 10
                                RectangleItem{
                                    id:modeRectItem3_Id
                                    radius: 0;width: 50;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                                    fillColor: "#353535"
                                    topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                                    Label{anchors.centerIn: parent ; text: "Height" ; font.pointSize: 7}
                                }
                                Text{
                                    anchors.verticalCenter: parent.verticalCenter
                                    width: parent.width - modeRectItem_Id.width
                                    text: "3.00m"
                                }
                            }
                        }
                        //bad code has been finished. i should put this lines to another qml file
                        RectangleItem{
                            id:rectangleItem4_Id
                            radius: 0;width: parent.width;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                            fillColor: "#232323"
                            topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                            opacity: 0.8

                            Row{
                                anchors.fill: parent
                                spacing: 10
                                RectangleItem{
                                    id:modeRectItem4_Id
                                    radius: 0;width: 50;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                                    fillColor: "#353535"
                                    topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                                    Label{anchors.centerIn: parent ; text: "Width" ; font.pointSize: 7}
                                }
                                Text{
                                    anchors.verticalCenter: parent.verticalCenter
                                    width: parent.width - modeRectItem_Id.width
                                    text: "name"
                                }
                            }
                        }
                        //bad code has been finished. i should put this lines to another qml file
                        RectangleItem{
                            radius: 0;width: parent.width;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                            fillColor: "#232323"
                            topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                            opacity: 0.8

                            Row{
                                anchors.fill: parent
                                spacing: 10
                                RectangleItem{
                                    radius: 0;width: 50;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                                    fillColor: "#353535"
                                    topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                                    Label{anchors.centerIn: parent ; text: "Rotation" ; font.pointSize: 7}
                                }
                                Text{
                                    anchors.verticalCenter: parent.verticalCenter
                                    width: parent.width - modeRectItem_Id.width
                                    text: "name"
                                }
                            }
                        }

                        //bad code has been finished. i should put this lines to another qml file
                            Row{
                                width: parent.width
                                height: 30
                                spacing: 0
                                RectangleItem{
                                    radius: 0;width: parent.width/4;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                                    fillColor: "#353535"
                                    topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                                    opacity: 0.8
                                    Label{anchors.centerIn: parent ; text: "Translation" ; font.pointSize: 7}
                                }
                                //++++++
                                RectangleItem{
                                    radius: 0;width: parent.width/4;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                                    fillColor: "#232323"
                                    topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                                    opacity: 0.8
                                    Label{anchors.centerIn: parent ; text: "3" ; font.pointSize: 7}
                                }
                                RectangleItem{
                                    radius: 0;width: parent.width/4;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                                    fillColor: "#232323"
                                    topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                                    opacity: 0.8
                                    Label{anchors.centerIn: parent ; text: "2" ; font.pointSize: 7}
                                }
                                RectangleItem{
                                    radius: 0;width: parent.width/4;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
                                    fillColor: "#232323"
                                    topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
                                    opacity: 0.8
                                    Label{anchors.centerIn: parent ; text: "1" ; font.pointSize: 7}
                                }
                            }


                        Behavior on opacity {NumberAnimation{ easing.type: Easing.OutInQuad;duration:500 ; }}
                    }

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

                Image{
                    id:sizeRectImage2_Id
                    y:10 ; x:10
                    source: "qrc:/Icon/Icon/arrow.svg"
                    sourceSize: "10x10"
                    fillMode: Image.PreserveAspectFit
                    rotation: sizeRectangle2_Id.isExpanded ? 90 : 0
                    MouseArea{
                        anchors.fill: parent
                        cursorShape: "PointingHandCursor"
                        onClicked: {
                            sizeRectangle2_Id.isExpanded = !sizeRectangle2_Id.isExpanded
                        }
                    }
                    Behavior on rotation {NumberAnimation{duration:500}}
                }
                Text{
                    y:5
                    anchors.left: sizeRectImage2_Id.right
                    anchors.leftMargin: 5
                    text: "size"
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
