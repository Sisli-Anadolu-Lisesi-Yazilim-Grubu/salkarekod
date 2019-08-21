import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.2

Page {
    id: page

    property alias page: page
    anchors.fill: parent

    Image {
        id: image
        anchors.centerIn: parent
        source: "qrc:/media/icon_resim/sal-logo.png"
        width: parent.width / 1.25
        height: parent.height / 1.7
    }

    footer: StatusBar {
        RowLayout {
            Label {
                text: qsTr("Sürüm 1.0 Beta")
                font.pixelSize: 20
            }
        }
    }
}
