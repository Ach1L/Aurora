import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent

        Button {
            text: "Ввести текст"
            onClicked: dialog.open()
            anchors.horizontalCenter: parent.horizontalCenter
            width: 371
        }

        Text {
            id: field
            anchors.horizontalCenter: parent.horizontalCenter
            width: 370
        }
    }

    Dialog {
        id: dialog
        property alias firstTextFieldValue: firstTextField.text

        Column {
            width: parent.width
            spacing: Theme.paddingMedium
            DialogHeader { }
            TextField {
                id: firstTextField
                width: parent.width
            }
        }
        onAccepted: field.text = firstTextFieldValue
    }

    Button {
        x: 100
        y: 1000
        width: 160
        text: "Пред"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page2_1.qml")))
    }

    Button {
        x: 500
        y: 1000
        width: 160
        text: "След"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page4.qml")))
    }
}
