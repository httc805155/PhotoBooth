import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id: base
        anchors.fill: parent
        color: "gray"

        //MediaDevices
        //{
            //id: previewArea
            //color: "blue"
            //width: 500
            //height: 500
            //Camera
            //{
            //}

            //anchors.fill: parent
            //anchors.bottomMargin: 80
        //}
        MediaDevices {
            id: mediaDevices
        }

        VideoOutput
        {
            id: output
            anchors.fill: parent
        }

        CaptureSession {
            camera: camera
            videoOutput: output
        }

        Camera
        {
            id: camera
            active: true
            cameraDevice: mediaDevices.defaultVideoInput
        }

        RoundButton
        {
            radius: 30
            width: 60
            height: 60
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10


            onClicked: console.log(camera.cameraDevice.description)

            function shot()
            {
                //console.debug("Clicked")
                //onlybutton.height = 50
            }
        }
    }
}
