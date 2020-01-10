import QtQuick 2.0

Item {
    id:mybrow

    anchors.fill: parent
    property string homestate:"homestate"
    property string orginalstate:"orginalstate"
    property string tvshowstate:"tvshowstate"
    property string moviesstate:"moviesstate"
    property string kidsstate:"kidsstate"

    state: homestate


    Home {
        id:myhome
        visible: false
        enabled: visible
    }
    Originals {
        id:myoriginale
        visible: false
        enabled: visible
    }
    Tvshows {
        id:mytvshow
        visible: false
        enabled: visible
    }
    Movies {
        id:mymovies
        visible: false
        enabled: visible
    }
    Kids {
        id:mykids
        visible: false
        enabled: visible
    }

    states: [
        State {
            name: "homestate"
            PropertyChanges {
                target: myhome
                visible:true

            }
        },
        State {
            name: "orginalstate"
            PropertyChanges {
                target: myoriginale
                visible:true

            }
        },
        State {
            name: "tvshowstate"
            PropertyChanges {
                target: mytvshow
                visible:true

            }
        },
        State {
            name: "moviesstate"
            PropertyChanges {
                target: mymovies
                visible:true

            }
        },
        State {
            name: "kidsstate"
            PropertyChanges {
                target: mykids
                visible:true

            }
        }
    ]




}
