import QtQuick 2.15
import QtQuick.Controls 2.15
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

        Rectangle
        {
            id: previewArea
            color: "blue"
            width: 500
            height: 500
            anchors.fill: parent
            anchors.bottomMargin: 80
        }



        RoundButton
        {
            id: camera
            radius: 30
            width: 60
            height: 60
            anchors.horizontalCenter: parent.Center
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10


            onClicked: justDoSomething()

            function justDoSomething()
            {
                //console.debug("Clicked")
                //onlybutton.height = 50
            }
        }
    }
}
