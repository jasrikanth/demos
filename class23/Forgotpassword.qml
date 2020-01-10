import QtQuick 2.0

Item {
    anchors.fill: parent
    Rectangle{
        width: 300
        height: 400
        color: "white"
        radius: 10
        border.color: "black"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        Text {
            font.pixelSize: 25
            width: 50
            height: 50
            text: "Password Assistance"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 20
        }
        Text {
            font.pixelSize: 25
            width: 50
            height: 50
            text: "Email"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 70
        }
        Rectangle{
            width: 150
            height: 30
            color: "white"
            radius: 5
            border.color: "black"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 100
            anchors.leftMargin: 30
            anchors.rightMargin: 30

            TextInput{
                id:email
                width: 150
                height: 30
                font.pixelSize: 18
            }
        }
        Rectangle{
            width: 150
            height: 30
            color: "black"
            radius: 5
            border.color: "black"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 150
            anchors.leftMargin: 30
            anchors.rightMargin: 30
            Text {
                font.pixelSize: 10
                width: 50
                height: 20
                color: "orange"
                text: "Continue"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {

                         Login.forgotpassword(email.text)

                        mylogin.state = standedstate
                }
            }
        }
    }
}
