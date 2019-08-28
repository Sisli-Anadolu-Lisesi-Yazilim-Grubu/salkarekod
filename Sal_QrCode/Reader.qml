import QtQuick 2.12
import QtQuick.Controls 2.3
import QtMultimedia 5.13
import QZXing 2.3
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
           focus {
                   focusMode: CameraFocus.FocusContinuous
                   focusPointMode: CameraFocus.FocusPointAuto
               }

       }
    VideoOutput {
        id: videoOutput
        source: camera
        anchors.fill: parent
        filters: [ zxingFilter ]
    }
    QZXingFilter {
        id: zxingFilter

        decoder {
            enabledDecoders: QZXing.DecoderFormat_EAN_13 | QZXing.DecoderFormat_CODE_39 | QZXing.DecoderFormat_QR_CODE
            onTagFound: {
                console.log(tag);
            }
        }
        captureRect: {

               videoOutput.contentRect;
               videoOutput.sourceRect;
               return videoOutput.mapRectToSource(videoOutput.mapNormalizedRectToItem(Qt.rect(0.25, 0.25, 0.5, 0.5)));
        }
    }

}
