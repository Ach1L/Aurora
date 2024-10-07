import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        spacing: 100
        y: 300
        x: 40

        Item {
            width: 650
            height: 400

            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 30

                Column {
                    spacing: 30

                    Rectangle {
                        width: 200
                        height: 200
                        color: "red"
                    }

                    Rectangle {
                        width: 200
                        height: 200
                        color: "magenta"
                    }
                }

                Column {
                    spacing: 10

                    Rectangle {
                        width: 200
                        height: 200
                        color: "lightgreen"
                    }
                }

                Column {
                    spacing: 30

                    Rectangle {
                        width: 200
                        height: 200
                        color: "blue"
                    }

                    Rectangle {
                        width: 200
                        height: 200
                        color: "black"
                    }
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
                onClicked: pageStack.push(Qt.resolvedUrl("Page3.qml"))
            }
        }
    }

}
