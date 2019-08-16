import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.2

Page {
    id: page
    width: 480
    height: 640
    property alias page: page
    anchors.fill: parent

    Image {
        id: image
        anchors.centerIn: parent
        source: "qrc:/media/media/sal-logo.png"
        width: parent.width / 1.25
        height: parent.height / 2
    }

    footer: StatusBar {
        RowLayout {
            Label {
                text: qsTr("v1.0 Beta")
                font.pixelSize: 15
            }
        }
    }
}
