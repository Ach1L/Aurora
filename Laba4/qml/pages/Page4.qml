import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent

        Button {
            text: "Ввести дату"
            onClicked: dialog.open()
            width: 370
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: field
            anchors.horizontalCenter: parent.horizontalCenter
            width: 370
            text: ""
        }
    }

    DatePickerDialog {
        id: dialog
        onAccepted: {
            field.text = date.toDateString()
        }
    }

    Button {
        x: 100
        y: 1000
        width: 160
        text: "Пред"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page3.qml")))
    }
    Button {
        x: 500
        y: 1000
        width: 160
        text: "След"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page5.qml")))
    }
}
