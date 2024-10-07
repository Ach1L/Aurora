import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        spacing: 100
        y: 300
        x: 20

        Item {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 650
            height: 400

            Grid {
                spacing: 30
                columns: 3

                Rectangle {
                    width: 200
                    height: 200
                    color: "red"
                }

                Rectangle {
                    width: 200
                    height: 200
                    color: "lightgreen"
                }

                Rectangle {
                    width: 200
                    height: 200
                    color: "blue"
                }

                Rectangle {
                    width: 200
                    height: 200
                    color: "magenta"
                }

                Rectangle {
                    width: 200
                    height: 200
                    opacity: 0
                }

                Rectangle {
                    width: 200
                    height: 200
                    color: "black"
                }
            }
        }
        Row {
            spacing: 30
            Button {
                text: "Back"
                onClicked: pageStack.pop()
            }

            Button {
                text: "Next"
                onClicked: pageStack.push(Qt.resolvedUrl("Page4.qml"))
            }
        }
    }

}

