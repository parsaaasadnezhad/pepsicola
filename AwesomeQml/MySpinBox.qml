import QtQuick 2.12
import QtQuick.Controls 2.12

SpinBox {
    id: control
    width: parent.width/3
    height: parent.height
    editable: true
    value: 2
    from:0
    to:359
    clip: true


    property int decimals: 0
    property real realValue: value / Math.pow(10 , decimals)
    property var format: 'f'

    validator: DoubleValidator {
        bottom: Math.min(control.from, control.to)
        top:  Math.max(control.from, control.to)
    }

    textFromValue: function(value, locale) {
        return Number(value / Math.pow(10 , decimals)).toLocaleString(locale, control.format, control.decimals)
    }

    valueFromText: function(text, locale) {
        return Number.fromLocaleString(locale, text) * Math.pow(10 , decimals)
    }

    // + + + + + customizing spinbox
    contentItem: TextInput {
        z: 2
        text: control.textFromValue(control.value, control.locale)

        font: control.font
        color: "#eee"
        //        selectionColor: "#a9a9a9"
        //        selectedTextColor: "#3f3f3f"

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenter:  parent.verticalCenter
        anchors.verticalCenterOffset: 5

        readOnly: !control.editable
        validator: control.validator
        inputMethodHints: Qt.ImhFormattedNumbersOnly


    }

    up.indicator:    RectangleItem{
        radius: 0;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
        fillColor: control.up.pressed ? "#454545" : "#353535"
        x: control.mirrored ? 0 : parent.width - width
        height: parent.height
        width: 30
        implicitWidth: 30
        implicitHeight: 30
        topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true

        Text {
            text: "+"
            font.pixelSize: control.font.pixelSize * 2
            color: "#21be2b"
            anchors.fill: parent
            fontSizeMode: Text.Fit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }


    down.indicator:  RectangleItem{
        radius: 0;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
        fillColor: control.down.pressed ? "#454545" : "#353535"
        x: control.mirrored ? parent.width - width : 0
        height: parent.height
        width: 30
        implicitWidth: 30
        implicitHeight: 30
        topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true

        Text {
            text: "-"
            font.pixelSize: control.font.pixelSize * 2
            color: "#21be2b"
            anchors.fill: parent
            fontSizeMode: Text.Fit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    background:RectangleItem{
        id:backgroundRect_Id
        radius: 0;width: parent.width;joinStyle: 1;layer.smooth: true;layer.enabled: true;antialiasing: true;strokeColor: "transparent"
        height: parent.height
        implicitWidth: 140
        fillColor: "#2e2e2e"
        topLeftRadius: 5;bottomRightRadius: 5;topLeftBevel: true;bottomRightBevel: true

    }
}
