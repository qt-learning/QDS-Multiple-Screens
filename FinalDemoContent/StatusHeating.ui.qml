import QtQuick 6.7
import QtQuick.Timeline 1.0

Image {
    id: statusCooling
    anchors.verticalCenter: parent.verticalCenter
    source: "images/statusHeating.png"
    property bool animationTrigger: startView.displayValue >= 25
    opacity: 0
    anchors.horizontalCenter: parent.horizontalCenter
    fillMode: Image.PreserveAspectFit

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: turnOn
                running: animationTrigger
                loops: 1
                duration: 200
                to: 100
                from: 0
            },
            TimelineAnimation {
                id: turnOff
                running: !animationTrigger
                loops: 1
                duration: 200
                to: 200
                from: 100
            }
        ]
        startFrame: 0
        endFrame: 200
        enabled: true

        KeyframeGroup {
            target: statusCooling
            property: "opacity"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 100
            }

            Keyframe {
                value: 0
                frame: 200
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/

