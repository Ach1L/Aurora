import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent

        Switch {
            anchors.horizontalCenter: parent.horizontalCenter
            id: mute
            icon.source: (checked ? Theme.highlightColor
                                    : Theme.primaryColor)
        }

        Label {
            text: (mute.checked ? "Включен" : "Выключен")
        }
    }

    Button {
        width: 100
        x: parent.width - 100
        y: parent.height - 100
        text: "Next"
        onClicked: pageStack.push(Qt.resolvedUrl("Page9.qml"))
    }

    Button {
        width: 100
        y: parent.height - 100
        text: "Back"
        onClicked: pageStack.pop()
    }
}
