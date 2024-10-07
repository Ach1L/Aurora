import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Item {
        anchors {
            left: parent.left; right: parent.right;
            verticalCenter: parent.verticalCenter;
        }
        height: parent.height * 0.8

        SlideshowView {
            id: view
            anchors.centerIn: parent
            height: width
            itemHeight: width; itemWidth: width;
            model:     ListModel {
                ListElement { desc: "Элемент списка 1"; date: "7.12.22"; }
                ListElement { desc: "Элемент списка 2"; date: "11.12.22"; }
                ListElement { desc: "Элемент списка 3"; date: "15.12.22"; }
            }
            delegate: Rectangle {
                width: view.itemWidth;
                height: view.itemHeight;
                color: "black"
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    y: 100
                    text: date
                    color: "white"
                }
                Text {
                    anchors.centerIn: parent
                    text: desc
                    color: "white"
                }
            }
        }

    }

    Button {
        x: 100
        y: 1400
        width: 160
        text: "Пред"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page7.qml")))
    }
    Button {
        x: 500
        y: 1400
        width: 160
        text: "След"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Page9.qml")))
    }
}
