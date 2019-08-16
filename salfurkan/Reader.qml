import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12

Page {
    id:a
    property alias a: a

    anchors.top: app_toolbar.bottom
    anchors.bottom: parent.bottom
    anchors.right: parent.right
    anchors.left: parent.left




    visible: false
}
