import QtQuick 2.0
import QtQuick.Controls 2.12
import "../AwesomeQml"

RectangleItem {

    property alias spinBoxAlias: spinBox_Id

    radius: 0;width: parent.width;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
    fillColor: "#232323"
    topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
    opacity: 0.8

    //1
    RectangleItem{
        radius: 0;width: label_Id.implicitWidth+10 ;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
        fillColor: "#353535"
        topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true

        Label{
            id:label_Id
            anchors.centerIn: parent
            text: "labelName"
            font.pointSize: 7
        }
    }

    //2
    MySpinBox{
        id:spinBox_Id
        anchors.right: parent.right
    }
}
