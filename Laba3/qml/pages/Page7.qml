import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ComboBox {
        anchors.centerIn: parent
        label: "Выпадающий список"

        menu: ContextMenu {
            MenuItem { text: "1" }
            MenuItem { text: "2" }
            MenuItem { text: "3" }
            MenuItem { text: "4" }
        }
        onCurrentIndexChanged: console.log(value)
    }

    Button {
        width: 100
        x: parent.width - 100
        y: parent.height - 100
        text: "Next"
        onClicked: pageStack.push(Qt.resolvedUrl("Page8.qml"))
    }

    Button {
        width: 100
        y: parent.height - 100
        text: "Back"
        onClicked: pageStack.pop()
    }
}
