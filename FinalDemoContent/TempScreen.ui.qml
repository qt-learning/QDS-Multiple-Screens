

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import FinalDemo 1.0
import QtQuick.Layouts

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor

    Text {
        id: mainTemp
        color: "#ffffff"
        text: startView.displayValue.toString()
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 180
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: "Manrope"
    }

    ColumnLayout {
        x: 440
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 104
        spacing: 64
        RoundButton {
            id: plusButton
            text: "+"
            icon.width: 48
            icon.source: "images/temp-plus-btn.svg"
            icon.height: 48
            icon.color: "#ff0047"
            flat: true
            display: AbstractButton.IconOnly

            Connections {
                target: plusButton
                onClicked: startView.displayValue += 1
            }
        }

        RoundButton {
            id: minusButton
            text: "+"
            icon.width: 48
            icon.source: "images/temp-minus-btn.svg"
            icon.height: 48
            icon.color: "#007fff"
            flat: true
            display: AbstractButton.IconOnly

            Connections {
                target: minusButton
                onClicked: startView.displayValue -= 1
            }
        }
    }

    BackButton {
        id: backButton
        x: 601
        y: 519

        Connections {
            target: backButton
            onClicked: startView.state = "StandbyState"
        }
    }
}
