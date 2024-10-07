import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    allowedOrientations: Orientation.All

    Button {
        anchors.centerIn: parent
        text: "Предыдущая страница"
        onClicked: pageStack.navigateBack(1)
    }
}
