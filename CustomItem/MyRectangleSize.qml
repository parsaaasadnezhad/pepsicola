import QtQuick 2.0
import QtQuick.Controls 2.12
import "../AwesomeQml"

RectangleItem{
    id:rectangleItem_Id

    property string titleText
    property string valueText
    property int titleWidth : 40
    property int titleFontSize: 7


    radius: 0;width: parent.width;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
    fillColor: "#232323"
    topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
    opacity: 0.8

    Row{
        anchors.fill: parent
        spacing: 10

        RectangleItem{
            id:leftRectangleItem_Id
            radius: 0;width: titleWidth;height: rectangleItem_Id.height ;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
            fillColor: "#353535"
            topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
            Label{anchors.centerIn: parent ; text: titleText ; font.pointSize: titleFontSize}
        }

        Text{
            id:text_Id
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width - leftRectangleItem_Id.width
            text: valueText

            MouseArea{
                anchors.fill: parent
                onDoubleClicked: {
                    textField_Id.visible = true
                    textField_Id.selectAll()
                    textField_Id.forceActiveFocus() // focus=true ->  doesnt work...
                    text_Id.visible = false
                }
            }
        }
    }

    TextField{
        id:textField_Id
        anchors.bottomMargin: -10
        anchors.bottom: parent.bottom
        x:text_Id.x + 5
        focus: true
        visible: false
        width: parent.width/3
        text: text_Id.text
        onAccepted: {
            visible = false
            text_Id.text = text
            text_Id.visible = true
        }
    }
}
