import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property int counter: 0
    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 500
        text: "+"
        onClicked: counter++
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 700
        text: "Обнулить счетчик"
        onClicked: counter = 0
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 300
        text: counter
    }

    Button {
        x: 100
        y: 1000
        width: 160
        text: "Пред"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page10.qml")))
    }
}
