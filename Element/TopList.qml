import QtQuick 2.0
import QtQuick.Controls 2.12

Item {
    clip: true

    signal sendNameToAd(string name)

    ListView{
        id:listView_Id
        anchors.fill: parent
        highlight: Rectangle {
            color: "#0d47a1"; radius: 5 ;z:1;opacity: 0.3
        }
        focus: true
        model: 4

        delegate: Rectangle{
            width: parent.width
            height: 25
            color: index % 2 == 0 ? "#343434" : "#232323"
            Text{
                text: index
            }

            Image{
                id:rightImage_Id
                property bool hidden: false
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.verticalCenter: parent.verticalCenter

                sourceSize: "18x18"
                fillMode: Image.PreserveAspectFit
                source: hidden ? "qrc:/Icon/Icon/hide.svg" : "qrc:/Icon/Icon/eye.svg"
                MouseArea{
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                    onClicked: {
                        rightImage_Id.hidden = !rightImage_Id.hidden
                        listView_Id.currentIndex = index 
                    }
                }

            }

            MouseArea{
                width: rightImage_Id.x - 5
                height: parent.height
                onClicked: {
                    listView_Id.currentIndex = index
                    sendNameToAd(modelData)
                }
            }
        }
    }


}

