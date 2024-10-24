

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

    BackButton {
        id: backButton
        x: 601
        y: 519

        Connections {
            target: backButton
            onClicked: startView.state = "StandbyState"
        }
    }

    ForecastWidget {
        id: forecastWidget
        x: 430
        y: 243
    }

    RowLayout {
        id: outsideTempWidget
        anchors.top: parent.top
        anchors.topMargin: 84
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10
        Image {
            id: mingcute_suncloudylineBig
            source: "images/mingcute_sun-cloudy-line-Big.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: outsideTemp
            color: "#ffffff"
            text: qsTr("16°")
            font.pixelSize: 120
            font.family: "Manrope"
        }
    }

    RowLayout {
        anchors.top: parent.top
        anchors.topMargin: 240
        anchors.horizontalCenter: parent.horizontalCenter
        RowLayout {
            id: daytTempWidget
            Image {
                id: mingcute_sunlinedark
                source: "images/mingcute_sun-line-dark.svg"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: dayTemp
                opacity: 0.4
                color: "#ffffff"
                text: qsTr("28°")
                font.pixelSize: 24
                font.family: "Manrope"
            }
        }

        RowLayout {
            id: nightTempWidget
            Image {
                id: mingcute_sunlinedark1
                source: "images/mingcute_moon-line.svg"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: dayTemp1
                opacity: 0.4
                color: "#ffffff"
                text: qsTr("10°")
                font.pixelSize: 24
                font.family: "Manrope"
            }
        }
    }
}
