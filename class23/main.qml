import QtQuick 2.5
import QtQuick.Window 2.2


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item {
        id:mainparent
        anchors.fill: parent


        Login {
            id: mycreat
            anchors.fill: parent
        }

       /* Browes {
            id:myorginal
            anchors.fill: parent
        }*/

    }

}
