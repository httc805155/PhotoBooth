import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property string defaultPath

    Rectangle
    {
        id: base
        anchors.fill: parent
        color: "gray"

        MediaDevices {
            id: mediaDevices
        }

        CaptureSession {
            videoOutput: output
            camera: Camera{ active: true; cameraDevice: mediaDevices.defaultVideoInput}
        }

        VideoOutput
        {
            id: output
            anchors.fill: parent
            anchors.bottomMargin: 30
        }

        RoundButton
        {
            id: snapshot
            radius: 30
            width: 60
            height: 60
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            property int count: 0
            property string savingPath


            onClicked: shot()

            function shot()
            {
                console.log("Shot")
                output.grabToImage(function(image) {
                    console.log("Called...", arguments)
                    savingPath = defaultPath + "/screen" + count + ".png"
                    image.saveToFile(defaultPath + "/screen" + count + ".png"); // save happens here
                    count++
                });
            }

        }
    }
}
