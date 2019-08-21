import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12
import QtMultimedia 5.13

Page {
    id:a
    visible: false
    property alias a: a
    property alias camera: camera
    property alias videoOutput: videoOutput

    anchors.top: app_toolbar.bottom
    anchors.bottom: parent.bottom
    anchors.right: parent.right
    anchors.left: parent.left
    Camera {
           id: camera

       }
    VideoOutput {
        id: videoOutput
            source: camera
            anchors.fill: parent
            focus : visible
    }
}
