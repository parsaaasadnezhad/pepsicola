import QtQuick 2.0
import QtQuick.Controls 2.12
import "../AwesomeQml"

RectangleItem{

    property string labelName

    width: parent.width
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
        spacing: 0

        RectangleItem{
            radius: 0;width: parent.width/4;height: 30;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
            fillColor: "#353535"
            topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true
            opacity: 0.8
            Label{anchors.centerIn: parent ; text: "Translation" ; font.pointSize: 7}
        }
        //++++++
         MySpinBox{
            width: parent.width/4
            decimals: 2
            format: 'f'
//            from:     should ask in meeting ->>> how many decimals and the renge???
//                to:
        }
        MySpinBox{
            width: parent.width/4
            decimals: 2
            format: 'f'
            //            from:
            //                to:
        }
        MySpinBox{
            width: parent.width/4
            decimals: 2
            format: 'f'
            //            from:
            //                to:
        }
    }
}
