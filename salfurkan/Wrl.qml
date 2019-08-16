import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtMultimedia 5.13

Page {
    property int deg: 0
    id: wrl_page
    anchors.fill: parent
    width: 480
    height: 640
    property alias wrl_page: wrl_page
    clip: false
    visible:false

     TabBar {

        id: tbutton
        anchors.horizontalCenter: parent.horizontalCenter

        y: parent.height / 8
        width: parent.width / 1.7

        TabButton {
            id: textshow
            text: qsTr("Yazı")
            onClicked: {
                agac.visible = false
                agacyazi.visible = true
            }

        }

        TabButton {
            id: pictureshow
            text: qsTr("Resim")
            onClicked: {
                agac.visible = true
                agacyazi.visible = false
            }
        }
    }

    ProgressBar {

         id: progressBar
         anchors.horizontalCenter:  parent.horizontalCenter
         y: (column.y + column.height ) * 1.10
         width: tbutton.width
         value:playMusic.position/playMusic.duration

    }

    RoundButton {
        anchors.horizontalCenter:  parent.horizontalCenter
        y: (progressBar.y + progressBar.height )
        width: 100
        height: 100
        Image {
            id: jj
            anchors.fill: parent
            source: "qrc:/media/media/play-128.png"
        }
        onPressed: {
            if (deg == 0) {
                playMusic.play()
                deg=1
            }
            else if (deg == 1) {
                playMusic.pause()
                deg=2
            }
            else if (deg == 2) {
                playMusic.play()
                deg = 1
            }
        }

        Audio {
             id: playMusic
             source: "qrc:/media/media/a1.mp3"


         }
    }




    Column {
        id: column
        width: tbutton.width
        height: 300
        x: tbutton.x
        y: tbutton.y + tbutton.height

        Rectangle {
            id: rec1
            width: parent.width
            height: parent.height
            color: "white"
            border.color: "black"
            border.width: 1
        }


        Image {
             id: agac
             visible: false
             anchors.fill: rec1
             source: "qrc:/media/media/indir.jpg"

         }


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
                        text: qsTr("")
                        wrapMode: Text.WordWrap
                        width: parent.width

                }
            }
        }
    }
}
