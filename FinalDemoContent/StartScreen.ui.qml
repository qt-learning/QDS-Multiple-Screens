

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.7
import QtQuick.Controls 6.7
import FinalDemo

Rectangle {
    id: startView
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor
    property int displayValue: 24
    state: "StandbyState"

    Loader {
        id: standbyLoader
        visible: false
        anchors.fill: parent
        source: "StandbyScreen.ui.qml"
        active: false
    }

    Loader {
        id: forecastLoader
        visible: false
        anchors.fill: parent
        source: "ForecastScreen.ui.qml"
        active: false
    }

    Loader {
        id: tempLoader
        visible: false
        anchors.fill: parent
        source: "TempScreen.ui.qml"
        active: false
    }

    StatusCooling {
        id: statusCooling
    }

    StatusHeating {
        id: statusHeating
        x: 209
        y: -119
    }

    Image {
        id: thermostatFrame
        anchors.verticalCenter: parent.verticalCenter
        source: "images/thermostatFrame.png"
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
    }
    states: [
        State {
            name: "StandbyState"

            PropertyChanges {
                target: standbyLoader
                opacity: 1
                visible: true
                active: true
            }

            PropertyChanges {
                target: forecastLoader
                opacity: 0
            }

            PropertyChanges {
                target: tempLoader
                opacity: 0
            }
        },
        State {
            name: "ForecastState"

            PropertyChanges {
                target: forecastLoader
                opacity: 1
                visible: true
                active: true
            }

            PropertyChanges {
                target: standbyLoader
                opacity: 0
            }

            PropertyChanges {
                target: tempLoader
                opacity: 0
            }
        },
        State {
            name: "TempState"

            PropertyChanges {
                target: tempLoader
                opacity: 1
                visible: true
                active: true
            }

            PropertyChanges {
                target: forecastLoader
                opacity: 0
            }

            PropertyChanges {
                target: standbyLoader
                opacity: 0
            }
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: tempLoader
                        property: "opacity"
                        easing.bezierCurve: [0.55, 0.055, 0.675, 0.19, 1, 1]
                        duration: 200
                    }
                }
            }

            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: forecastLoader
                        property: "opacity"
                        easing.bezierCurve: [0.55, 0.055, 0.675, 0.19, 1, 1]
                        duration: 200
                    }
                }
            }

            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: standbyLoader
                        property: "opacity"
                        easing.bezierCurve: [0.55, 0.055, 0.675, 0.19, 1, 1]
                        duration: 200
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]
}

/*##^##
Designer {
    D{i:0}D{i:1}D{i:2}D{i:3}D{i:6}D{i:19;transitionDuration:2000}
}
##^##*/

