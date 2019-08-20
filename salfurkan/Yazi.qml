import QtQuick 2.12
import QtQuick.Controls 2.3

Rectangle {

    anchors.fill: parent
    color: "white"
    border.color: "black"
    border.width: 1
    visible: true

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
                id: colum1
                anchors.fill: parent

                Label {
                    id: agacyazi
                    text: qsTr(" ")
                    wrapMode: Text.WordWrap
                    width: parent.width
                    color: "black"

            }
        }
    }
}
