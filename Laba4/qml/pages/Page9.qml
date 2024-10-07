import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: "Пункт 1"
                onClicked: field.text = text
            }
            MenuItem {
                text: "Пункт 2"
                onClicked: field.text = text
            }
            MenuLabel { text: "Надпись" }
        }
        anchors {
            left: parent.left; right: parent.right;
        }
        height: parent.height * 0.1
        y: parent.height * 0.1
        header: PageHeader { title: "Список 1" }
    }

    TextField {
        id: field
        text: "Текст"
        anchors.centerIn: parent
    }

    SilicaListView {
        PushUpMenu {
            MenuItem {
                text: "Пункт 3"
                onClicked: field.text = text
            }
            MenuItem {
                text: "Пункт 4"
                onClicked: field.text = text
            }
            MenuLabel { text: "Надпись" }
        }
        anchors {
            left: parent.left; right: parent.right;
        }
        height: parent.height * 0.1
        y: parent.height * 0.75
        header: PageHeader { title: "Список 2" }
    }

    Button {
        x: 100
        y: 1100
        width: 160
        text: "Пред"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page8.qml")))
    }
    Button {
        x: 500
        y: 1100
        width: 160
        text: "След"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page10.qml")))
    }
}
