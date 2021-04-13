import QtQuick 2.0
import QtGraphicalEffects 1.12
import AdvertismentCpp 1.0

Rectangle {
    anchors.fill: parent
    color: "tomato"

    signal changeItem()

    MouseArea{
        anchors.fill: parent
        onClicked: {
            changeItem()
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
