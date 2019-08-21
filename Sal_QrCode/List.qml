import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12

Page {
    id:list_page
    property alias list_page: list_page


    anchors.top: app_toolbar.bottom
    anchors.bottom: parent.bottom
    anchors.right: parent.right
    anchors.left: parent.left
    visible: false

    ScrollView {
        id: scrollView
        anchors.fill: parent
        contentWidth: parent.width - 10
        clip: true
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        anchors.topMargin: 5
        anchors.bottomMargin: 5

    Column {
        spacing: 30
        anchors.fill: parent
        L12 {
            yazi.text: "Ağaç 1"
        }
        L12 {
            yazi.text: "Ağaç 2"
        }
        L12 {
            yazi.text: "Ağaç 3"
        }
        L12 {
            yazi.text: "Ağaç 4"
        }
        L12 {
            yazi.text: "Ağaç 5"
        }
        L12 {
            yazi.text: "Ağaç 6"
        }
        L12 {
            yazi.text: "Ağaç 7"
        }
        L12 {
            yazi.text: "Ağaç 8"
        }
        L12 {
            yazi.text: "Ağaç 9"
        }
        L12 {
            yazi.text: "Ağaç 10"
        }
        L12 {

        }

    }
 }


}

