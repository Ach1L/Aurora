import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    allowedOrientations: Orientation.All

    Label {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 400
        text: qsTr("Глубина стека %1").arg(pageStack.depth)
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 500
        text: "Увеличить стек и перейти"
        onClicked: pageStack.push(Qt.resolvedUrl(qsTr("Page1_%1.qml").arg((pageStack.depth + 1) % 4)))
    }

    Button {
        y: 1050
        x: 500
        width: 160
        text: "След"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page2_1.qml")))
    }
}
