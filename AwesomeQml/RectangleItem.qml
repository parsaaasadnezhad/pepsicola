import QtQuick 2.10
import QtQuick.Shapes 1.0

Shape {
    id: root
    width: 200
    height: 150

    property int radius: 10

    property int topLeftRadius: radius
    property int bottomLeftRadius: radius
    property int topRightRadius: radius
    property int bottomRightRadius: radius

    property alias gradient: path.fillGradient
    property alias strokeStyle: path.strokeStyle
    property alias strokeWidth: path.strokeWidth
    property alias strokeColor: path.strokeColor
    property alias dashPattern: path.dashPattern
    property alias joinStyle: path.joinStyle
    property alias fillColor: path.fillColor
    property alias dashOffset: path.dashOffset

    property bool bevel: false

    property bool topLeftBevel: bevel
    property bool topRightBevel: bevel
    property bool bottomRightBevel: bevel
    property bool bottomLeftBevel: bevel

    property bool antialiasing: false
    layer.enabled: antialiasing
    layer.smooth: antialiasing
    layer.textureSize: Qt.size(width * 2, height * 2)

    property int borderMode: 0

    property real borderOffset: {

        if (root.borderMode === 0)
            return path.strokeWidth * 10.0 / 20.0
        if (root.borderMode === 1)
            return 0

        return -path.strokeWidth * 10.0 / 20.0
    }


    Item {
        anchors.fill: parent
        anchors.margins: {
            if (root.borderMode === 0)
                return 0
            if (root.borderMode === 1)
                return -root.strokeWidth / 2.0


            return -root.strokeWidth
        }
    }

    ShapePath {
        id: path
        joinStyle: ShapePath.MiterJoin

        strokeWidth: 4
        strokeColor: "red"

        startX: root.topLeftRadius + borderOffset
        startY: root.borderOffset

        PathLine {
            x: root.width - root.topRightRadius - root.borderOffset
            y: root.borderOffset
        }

        PathArc {
            x: root.width - root.borderOffset
            y: root.topRightRadius + root.borderOffset

            radiusX: root.topRightBevel ? 50000 : root.topRightRadius
            radiusY: root.topRightBevel ? 50000 : root.topRightRadius
        }

        PathLine {
            x: root.width - root.borderOffset
            y: root.height - root.bottomRightRadius - root.borderOffset
        }

        PathArc {
            x: root.width - root.bottomRightRadius - root.borderOffset
            y: root.height - root.borderOffset

            radiusX: root.bottomRightBevel ? 50000 : root.bottomRightRadius
            radiusY: root.bottomRightBevel ? 50000 : root.bottomRightRadius
        }

        PathLine {
            x: root.bottomLeftRadius + root.borderOffset
            y: root.height - root.borderOffset
        }

        PathArc {
            x: root.borderOffset
            y: root.height - root.bottomLeftRadius - root.borderOffset

            radiusX: root.bottomLeftBevel ? 50000 : root.bottomLeftRadius
            radiusY: root.bottomLeftBevel ? 50000 : root.bottomLeftRadius
        }
        PathLine {
            x: borderOffset
            y: root.topLeftRadius + root.borderOffset
        }

        PathArc {
            x: root.topLeftRadius + root.borderOffset
            y: root.borderOffset

            radiusX: root.topLeftBevel ? 50000 : root.topLeftRadius
            radiusY: root.topLeftBevel ? 50000 : root.topLeftRadius
        }
    }
}
