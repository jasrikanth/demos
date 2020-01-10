import QtQuick 2.0

Item {
    anchors.fill: parent
    Rectangle{
        width: 300
        height: 400
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        radius: 10
        border.color: "black"
        Text {
            font.pixelSize: 25
            width: 50
            height: 50
            text: "sigh-in"
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
            text: "Email"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 70
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
            anchors.topMargin: 100
            anchors.leftMargin: 30
            anchors.rightMargin: 30

            TextInput{
                id:email
                width: 150
                height: 30
                font.pixelSize:10

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
            anchors.topMargin: 150
        }
        Text {
            font.pixelSize: 15
            width: 200
            height: 30
            text: "Forgot password"
            anchors.left: parent.left
            anchors.leftMargin: 160
            anchors.top: parent.top
            anchors.topMargin: 150

            MouseArea{
                anchors.fill: parent
                onClicked: {

                        mylogin.state = forgotstate
                }
            }
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
            anchors.topMargin: 180
            anchors.leftMargin: 30
            anchors.rightMargin: 30

            TextInput {
                id:password
                width: 150
                height: 30
                echoMode: TextInput.Password
                font.pixelSize: 18
            }
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
            anchors.topMargin: 240
            anchors.leftMargin: 30
            anchors.rightMargin: 30
            Text {
                font.pixelSize: 15
                width: 50
                height: 20
                color: "orange"
                text: "Sign-in"
                anchors.centerIn: parent

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        Login.dologin(email.text ,password.text)

                    }
                }
            }
        }
        Rectangle{
            width: 150
            height: 1
            color: "black"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 30
            anchors.rightMargin: 30
            anchors.topMargin: 330
            Text {
                font.pixelSize: 15
                width: 50
                height: 20
                color: "orange"
                text: "New to amazon"
                anchors.centerIn: parent
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
                text: "Creat Your amazon account"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {

                        mylogin.state = creatstate
                }
            }

        }

    }

    Connections {
        target: Login
        onLoginsucess :{
            console.log("sucess")

        }
        onLoginfail: {
            console.log("fail")
        }
    }
}
