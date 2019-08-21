import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtMultimedia 5.13

Page {
    property int deg: 0
    id: wrl_page
    anchors.fill: parent
    width: 480
    height: 640
    property alias yazi: yazi
    property alias resim: resim

    property alias wrl_page: wrl_page

    visible:false

     TabBar {

        id: tbutton
        anchors.horizontalCenter: parent.horizontalCenter

        y: parent.height / 14
        width: parent.width / 1.5

        TabButton {
            id: textshow
            text: qsTr("Yazı")
            onClicked: {
                resim.visible = false
                yazi.visible = true
            }

        }

        TabButton {
            id: pictureshow
            text: qsTr("Resim")
            onClicked: {
                resim.visible = true
                yazi.visible = false
            }
        }
    }

    ProgressBar {

         id: progressBar
         anchors.horizontalCenter:  parent.horizontalCenter
         y: ( name.y +name.height ) * 1.05
         width: tbutton.width
         value:playMusic.position/playMusic.duration

    }

    MouseArea {
        anchors.horizontalCenter:  parent.horizontalCenter
        y: (progressBar.y + progressBar.height )
        width: 100
        height: 100

        Image {
            id: play_png
            anchors.fill: parent
            source: "qrc:/media/icon_resim/play.png"
        }
        Image {
            id: pause_png
            anchors.fill: parent
            source: "qrc:/media/icon_resim/pause.png"
            visible: false
        }
        onClicked:  {
            if (deg == 0) {
                playMusic.play()
                deg=1
                play_png.visible = false
                pause_png.visible = true
            }
            else if (deg == 1) {
                playMusic.pause()
                deg=2
                play_png.visible = true
                pause_png.visible = false
            }
            else if (deg == 2) {
                playMusic.play()
                deg = 1
                play_png.visible = false
                pause_png.visible = true
            }
        }


    }

    Audio {
         id: playMusic
         source: "qrc:/media/ses_kayit/a1.mp3"
     }
    Item {
        id: name
        width: tbutton.width
        height: parent.height / 1.812054554
        anchors.top: tbutton.bottom
        anchors.left: tbutton.left
        MouseArea {
            anchors.fill: parent
            onClicked:  {
                resim2.visible = true
            }
        }

        Resim {
            id: resim

        }
        Yazi {
            id: yazi

        }

    }





}
