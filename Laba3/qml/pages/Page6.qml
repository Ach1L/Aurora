import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    TimePicker {
        anchors.centerIn: parent

        id: timePicker
        hour: 6
        minute: 30

        onTimeTextChanged: {
            console.log(time)
        }
    }

    Button {
        width: 100
        x: parent.width - 100
        y: parent.height - 100
        text: "Next"
        onClicked: pageStack.push(Qt.resolvedUrl("Page7.qml"))
    }

    Button {
        width: 100
        y: parent.height - 100
        text: "Back"
        onClicked: pageStack.pop()
    }
}
