import QtQuick 2.0

Item {
    anchors.fill: parent


    ListModel{
        id:mymodel
        ListElement{
            image:"qrc:/images.jpg"
        }
        ListElement{
            image:"qrc:/images1.jpg"
        }
        ListElement{
            image:"qrc:/images10.jpg"
        }
        ListElement{
            image:"qrc:/images11.jpg"
        }
        ListElement{
            image:"qrc:/images12.jpg"
        }
        ListElement{
            image:"qrc:/images13.jpg"
        }
        ListElement{
            image:"qrc:/images14.jpg"
        }
        ListElement{
            image:"qrc:/images15.jpg"
        }
        ListElement{
            image:"qrc:/images16.jpg"
        }
        ListElement{
            image:"qrc:/images17.jpg"
        }
    }
    Component{
        id:mydel
        Image {
            width: 100
            height: 100
            source: image
        }
    }
    ListView{
        width: 2000
        height: 1000
        spacing: 10
        orientation: ListView.Horizontal
        model: mymodel
        delegate: mydel
    }

}
