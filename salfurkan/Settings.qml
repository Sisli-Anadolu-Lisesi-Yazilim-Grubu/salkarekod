import QtQuick 2.13
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3

Page {
/*

  Bu sayfa işlevi yoktur....

  */
    property alias setting_page: setting_page
    visible: false
    id: setting_page
    anchors.top: app_toolbar.bottom
    anchors.bottom: parent.bottom
    anchors.right: parent.right
    anchors.left: parent.left

        Button{
            text: qsTr("Kaydet")
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            font.pointSize:  10 > fontB -10 ? 10 : fontB-10
            onClicked: {
                fontB = yazislider.value
            }
        }


            Label{
            id: label1
            text: qsTr("Temalar")
            font.pointSize: fontB
            color: yrenk
            anchors.horizontalCenter:  parent.horizontalCenter
            y:  parent.height  / 11
        }

       TabBar{
           id:tematbut

          y: (label1.y + label1.height ) * 1.05
           anchors.horizontalCenter: label1.horizontalCenter
            TabButton{
                id:siyahbutton
                text: qsTr("Siyah")
                font.pointSize: 10 > fontB -10 ? 10 : fontB-10
                width: contentItem.implicitWidth + leftPadding + rightPadding
                onClicked: {
                renk = Material.Dark
                    yrenk = "white"
                }

            }
            TabButton{
                id:beyazbutton
                text: qsTr("Beyaz")
                 font.pointSize: 10 > fontB -10 ? 10 : fontB-10
                width: contentItem.implicitWidth + leftPadding + rightPadding
                onClicked: {
               renk = "white"
                yrenk = "black"
                }
            }
            }

        Label{
            id:label2
            text: qsTr("Yazı Büyüklüğü")
            font.pointSize: fontB
            color: yrenk
             anchors.horizontalCenter:  parent.horizontalCenter
              y: (tematbut.y + tematbut.height ) * 1.40
        }

        Slider{
            id:yazislider
            from:10
            value:10
            to:30
            anchors.horizontalCenter:  parent.horizontalCenter
              anchors.top: label2.bottom
        }

        Label{
            text: name.text
            anchors.left: yazislider.right
            anchors.top: yazislider.top
            color: yrenk
                Text {
                    id: name
                    width: 49
                    height: 44
                visible: false


                text: qsTr((yazislider.value - (yazislider.value % 1)) .toString())
            }

            font.pointSize: (yazislider.value - (yazislider.value % 1))
            y:+2
        }

        Label{
            id:label3
            text: qsTr("Uygulama Dili")
            font.pointSize:fontB
            color: yrenk
            anchors.horizontalCenter:  parent.horizontalCenter
              y: (yazislider.y + yazislider.height ) * 1.10
        }
        TabBar{
            anchors.horizontalCenter:  parent.horizontalCenter
                y: (label3.y + label3.height ) * 1.05
            TabButton{
                id:trlanguage
                text: qsTr("Türkçe")
                 font.pointSize: 10 > fontB -10 ? 10 : fontB-10
                width: contentItem.implicitWidth + leftPadding + rightPadding
                onClicked: {

                }
            }
            TabButton{
                id:enlanguage
                text: ("English")
                 font.pointSize: 10 > fontB -10 ? 10 : fontB-10
                width: contentItem.implicitWidth + leftPadding + rightPadding
                onClicked: {

                }
            }
            }



    }
