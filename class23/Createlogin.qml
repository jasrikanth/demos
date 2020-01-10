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
            text: "Create account"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 20
        }
        Text{
            font.pixelSize: 15
            width: 50
            height: 10
            text: "Your Name"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.leftMargin: 30

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
            anchors.topMargin: 70
            anchors.leftMargin: 30
            anchors.rightMargin: 30

            TextInput{
                id:name
                width: 150
                height: 30
                font.pixelSize: 18
            }
        }
        Text {
            font.pixelSize: 15
            width: 50
            height: 10
            text: "Email"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 110
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
            anchors.topMargin: 130
            anchors.leftMargin: 30
            anchors.rightMargin: 30
            TextInput{
                id:email
                width: 150
                height: 30
                font.pixelSize: 18
            }
        }
        Text {
            font.pixelSize: 15
            width: 50
            height: 10
            text: "password"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 170
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
            anchors.topMargin: 190
            anchors.leftMargin: 30
            anchors.rightMargin: 30

            TextInput{
                id:password
                width: 150
                height: 30
                font.pixelSize: 18
                echoMode: TextInput.Password
            }
        }
            Text {
                font.pixelSize: 15
                width: 50
                height: 10
                text: "Re-password"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.top: parent.top
                anchors.topMargin: 230
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
                anchors.topMargin: 250
                anchors.leftMargin: 30
                anchors.rightMargin: 30
            }
        Rectangle{
            width: 150
            height: 30
            color: "black"
            radius: 5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 30
            anchors.rightMargin: 30
            anchors.topMargin: 300
            Text {
                font.pixelSize: 10
                width: 50
                height: 20
                color: "orange"
                text: "Creat Your amazon account"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {

                        Login.createaccount(name.text,password.text,email.text)

                }
            }
        }
        Rectangle{
            width: 150
            height: 30
            color: "black"
            radius: 5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 30
            anchors.rightMargin: 30
            anchors.topMargin: 350
            Text {
                font.pixelSize: 10
                width: 50
                height: 20
                color: "orange"
                text: "Sing-in"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {

                        mylogin.state = standedstate

                }
            }
        }
    }
}


