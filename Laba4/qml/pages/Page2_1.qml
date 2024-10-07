import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 400
        spacing: 50

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Прикрепить страницу"
            width: 500
            onClicked: pageStack.pushAttached(Qt.resolvedUrl(qsTr("Page2_2.qml")))
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Открепить"
            width: 300
            onClicked: pageStack.popAttached()
        }
    }

    Button {
        x: 100
        y: 1000
        width: 160
        text: "Пред"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page1_1.qml")))
    }

    Button {
        x: 500
        y: 1000
        width: 160
        text: "След"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page3.qml")))
    }
}
