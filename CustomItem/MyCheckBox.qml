import QtQuick 2.0
import QtQuick.Controls 2.12
import "../AwesomeQml"

RectangleItem{

    property string labelName

    width: parent.width / 2
    height: 30
    radius: 0
    joinStyle: 1
    layer.smooth: true
    layer.enabled: true
    antialiasing: true
    strokeColor: "transparent"
    fillColor: "#232323"
    topLeftRadius: 5
    bottomRightRadius: 5
    topLeftBevel: true
    bottomRightBevel: true
    opacity: 0.8

    Row{
        anchors.fill: parent
        spacing: -2
        RectangleItem
        {
            radius: 0
            width: 110
            height: 30
            joinStyle: 1
            layer.smooth: true
            layer.enabled: true
            antialiasing: true
            strokeColor: "transparent"
            fillColor: "#353535"
            topLeftRadius: 5
            bottomRightRadius: 5
            topLeftBevel: true
            bottomRightBevel: true

            Label{
                anchors.centerIn: parent
                text: labelName
                font.pointSize: 7
            }
        }
        //2
        Switch{
            id:switch_Id
            anchors.verticalCenter: parent.verticalCenter


        }
        //3
    }
    RectangleItem
    {
        anchors.right: parent.right
        radius: 0
        width: 25
        height: 30
        joinStyle: 1
        layer.smooth: true
        layer.enabled: true
        antialiasing: true
        strokeColor: "transparent"
        fillColor: "#353535"
        topLeftRadius: 5
        bottomRightRadius: 5
        topLeftBevel: true
        bottomRightBevel: true

        Label{
            anchors.centerIn: parent
            text: switch_Id.checked ? "on" : "off"
            font.pointSize: 7
        }
    }
}
