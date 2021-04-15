import QtQuick 2.0
import QtGraphicalEffects 1.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import AdvertismentCpp 1.0
import "../AwesomeQml"
import "../CustomItem"

Rectangle {

    property string modeRectangleItemName

    anchors.fill: parent
    color: "#454545"

    FanSeatCpp{

    }

    Flickable{
        anchors.centerIn: parent
        width:   parent.width - 20
        height: parent.height - 20
        contentHeight: modeRectItem_Id.height * 3 + (sizeRectangle_Id.height + sliderRectangle_Id.height + checkBoxRectangle_Id.height)
        clip: true
        z:2

        Column{
            id:column_Id
            anchors.fill: parent
            spacing: 5
            //0
            Row{
                Label{text: "Enviromental bilboard"}
            }
            //1
            MyRectangleSize{
                id:modeRectItem_Id
                titleText: "Mode"
                valueText: "parsa"
                titleFontSize: 8
                opacity: 1
            }
            //2
            Rectangle{
                id:sizeRectangle_Id
                property bool isExpanded: false
                width: parent.width
                height: isExpanded ? 100 : 30
                color: "transparent"
                border.width: 2
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
                    text: "Size"
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

                        //1
                        MyRectangleSize{
                            titleText: "Height"
                            valueText: "3.00"
                            titleWidth: 50
                        }
                        //2
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
                                Label{anchors.centerIn: parent ; text: "3" ; font.pointSize: 7
                                }
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

            //3
            Rectangle{
                id:sliderRectangle_Id
                property bool isExpanded: false
                width: parent.width
                height: isExpanded ? 160 : 30
                color: "transparent"
                border.width: 2
                border.color: "gray"

                Image{
                    id:sliderRectImage_Id
                    y:10 ; x:10
                    source: "qrc:/Icon/Icon/arrow.svg"
                    sourceSize: "10x10"
                    fillMode: Image.PreserveAspectFit
                    rotation: sliderRectangle_Id.isExpanded ? 90 : 0
                    MouseArea{
                        anchors.fill: parent
                        cursorShape: "PointingHandCursor"
                        onClicked: {
                            sliderRectangle_Id.isExpanded = !sliderRectangle_Id.isExpanded
                        }
                    }
                    Behavior on rotation {NumberAnimation{duration:500}}
                }
                Text{
                    y:5
                    anchors.left: sliderRectImage_Id.right
                    anchors.leftMargin: 5
                    text: "Sliders"
                }

                Item{
                    anchors.horizontalCenter:parent.horizontalCenter
                    anchors.top: sliderRectImage_Id.bottom
                    anchors.topMargin: 10
                    anchors.bottom: sliderRectangle_Id.bottom
                    anchors.bottomMargin: 10
                    width: parent.width - 20

                    Column{
                        anchors.fill: parent
                        opacity: sliderRectangle_Id.isExpanded ? 1 : 0

                        MyRectangleSlider{
                            labelName:"Ambient"
                        }
                        MyRectangleSlider{
                            labelName:"Diffusion"
                        }
                        MyRectangleSlider{
                            labelName:"Upper Tunning"
                        }
                        MyRectangleSlider{
                            labelName:"Lower Tunning"
                        }
                        Behavior on opacity {NumberAnimation{ easing.type: Easing.OutInQuad;duration:500 ; }}
                    }
                }
                Behavior on height {NumberAnimation{duration:500}}
            }

            //4
            Rectangle{
                id:checkBoxRectangle_Id
                property bool isExpanded: false
                width: parent.width
                height: isExpanded ? 100 : 30
                color: "transparent"
                border.width: 2
                border.color: "gray"

                Image{
                    id:checkBoxRectImage_Id
                    y:10 ; x:10
                    source: "qrc:/Icon/Icon/arrow.svg"
                    sourceSize: "10x10"
                    fillMode: Image.PreserveAspectFit
                    rotation: checkBoxRectangle_Id.isExpanded ? 90 : 0
                    MouseArea{
                        anchors.fill: parent
                        cursorShape: "PointingHandCursor"
                        onClicked: {
                            checkBoxRectangle_Id.isExpanded = !checkBoxRectangle_Id.isExpanded
                        }
                    }
                    Behavior on rotation {NumberAnimation{duration:500}}
                }
                Text{
                    y:5
                    anchors.left: checkBoxRectImage_Id.right
                    anchors.leftMargin: 5
                    text: "CheckBox"
                }

                Item{
                    anchors.horizontalCenter:parent.horizontalCenter
                    anchors.top: checkBoxRectImage_Id.bottom
                    anchors.topMargin: 10
                    anchors.bottom: checkBoxRectangle_Id.bottom
                    anchors.bottomMargin: 10
                    width: parent.width - 20

                    Column{
                        anchors.fill: parent
                        opacity: checkBoxRectangle_Id.isExpanded ? 1 : 0
                        Row{
                            width: parent.width
                            height: 30
                            MyCheckBox{
                                labelName:"Enviromental Adaptation"
                            }
                            MyCheckBox{

                                labelName:"Linear Interpolation"
                            }
                        }
                        Row{
                            width: parent.width
                            height: 30
                            MyCheckBox{
                                labelName:"Apply Segmentation"
                            }
                            MyCheckBox{
                                labelName:"Replcement Mode"
                            }
                        }

                        Behavior on opacity {NumberAnimation{ easing.type: Easing.OutInQuad;duration:500 ; }}
                    }
                }
                Behavior on height {NumberAnimation{duration:500}}
            }
        }
    }

    // + + + + + RADIAL GRADIENT
    RadialGradient {
            width: parent.width
            height: parent.height
            horizontalOffset: width /4
            verticalOffset:height /4
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#55f48fb1" }
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
                GradientStop { position: 0.0; color: "#55f48fb1" }
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
                GradientStop { position: 0.0; color: "#55f48fb1" }
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
                GradientStop { position: 0.0; color: "#55f48fb1" }
                GradientStop { position: 0.5; color: "#55454545" }
            }
        }
}






