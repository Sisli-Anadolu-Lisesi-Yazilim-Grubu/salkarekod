import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12
Rectangle {

    id : a
    color: "#696969"

    property alias resim: resim
    property alias yazi: yazi
    width: parent.width / 1.7
    height: 60
    anchors.horizontalCenter: parent.horizontalCenter
        Image {
            id: resim
           source: "qrc:/media/media/indir.jpg"
            anchors.left: parent.left
            height:   parent.height
            width:    parent.height
        }

        Label {
            id:yazi
            x: 66
            y: 0
            width: 146
            height: 60
            text: "Belirsiz"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                wrl.wrl_page.visible = true
            }
        }

}
