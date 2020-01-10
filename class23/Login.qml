import QtQuick 2.0

Item {
    id:mylogin

    anchors.fill: parent
    property string standedstate:"standedstate"
    property string creatstate:"creatstate"
    property string forgotstate:"forgotstate"

    state: forgotstate


    Standerdlogin {
        id:mystand
        visible: false
        enabled: visible
    }
    Createlogin{
        id:mycreat
        visible: false
        enabled: visible
    }
    Forgotpassword{
        id:myforgot
        visible: false
        enabled: visible
    }

    states: [
        State {
            name: "standedstate"
            PropertyChanges {
                target: mystand
                visible:true

            }
        },
        State {
            name: "creatstate"
            PropertyChanges {
                target: mycreat
                visible:true

            }
        },
        State {
            name: "forgotstate"
            PropertyChanges {
                target: myforgot
                visible:true

            }
        }
    ]
}


