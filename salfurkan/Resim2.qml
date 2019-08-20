import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    id: agac2


    visible: false
    property alias agac2: agac2
    anchors.fill: parent



        Flickable {
            id: flick
           anchors.fill: parent

            Layout.fillWidth: true
            Layout.fillHeight: true
            contentHeight: height
            contentWidth: width

            clip: true
            ScrollBar.vertical: ScrollBar{active: flick.contentHeight/flick.height > 1 ? true : false}
            ScrollBar.horizontal: ScrollBar{active: flick.contentWidth/flick.width > 1 ? true : false}
            boundsBehavior: Flickable.StopAtBounds

            PinchArea {
                id: pinch
                width: Math.max(flick.contentWidth, flick.width)
                height: Math.max(flick.contentHeight, flick.height)

                property real initialWidth
                property real initialHeight

                onPinchStarted: {
                    initialWidth = flick.contentWidth
                    initialHeight = flick.contentHeight
                }

                onPinchUpdated: {
                    var newWidth = initialWidth * pinch.scale
                    var newHeight = initialHeight * pinch.scale

                    if (newWidth < flick.width || newHeight < flick.height) {
                        flick.resizeContent(flick.width, flick.height, Qt.point(flick.width/2, flick.height/2))
                    }
                    else {
                        flick.contentX += pinch.previousCenter.x - pinch.center.x
                        flick.contentY += pinch.previousCenter.y - pinch.center.y
                        flick.resizeContent(initialWidth * pinch.scale, initialHeight * pinch.scale, pinch.center)
                    }
                }

                onPinchFinished: {
                    // Move its content within bounds.

                    flick.returnToBounds()
                }

                Image {
                    id: image
                    width: flick.contentWidth
                    height: flick.contentHeight
                    source: "qrc:/media/media/indir.jpg"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        anchors.fill: parent
                        onDoubleClicked: {
                            flick.resizeContent(flick.contentWidth*1.5, flick.contentHeight*1.5, Qt.point(mouseX, mouseY))
                        }
                        onWheel: {
                            if (wheel.angleDelta.y/120*flick.contentWidth*0.1+flick.contentWidth > flick.width && wheel.angleDelta.y/120*flick.contentHeight*0.1+flick.contentHeight > flick.height)
                            {
                                flick.resizeContent(wheel.angleDelta.y/120*flick.contentWidth*0.1+flick.contentWidth, wheel.angleDelta.y/120*flick.contentHeight*0.1+flick.contentHeight, Qt.point(flick.contentX + mouse.mouseX, flick.contentY + mouse.mouseY))
                                flick.returnToBounds()
                            }
                            else {
                                flick.resizeContent(flick.width, flick.height, Qt.point(flick.width/2, flick.height/2))
                                flick.returnToBounds()
                            }
                        }
                    }
                }

        }
    }
}
