import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent

        Button {
            text: "Ввести время"
            onClicked: dialog.open()
            width: 370
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: field
            anchors.horizontalCenter: parent.horizontalCenter
            width: 370
        }
    }

    TimePickerDialog {
        id: dialog
        onAccepted: field.text = time.toTimeString()
    }

    Button {
        x: 100
        y: 1000
        width: 160
        text: "Пред"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page4.qml")))
    }
    Button {
        x: 500
        y: 1000
        width: 160
        text: "След"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page6.qml")))
    }
}
