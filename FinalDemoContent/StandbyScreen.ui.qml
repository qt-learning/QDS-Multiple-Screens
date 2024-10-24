

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
        text: qsTr("24")
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 180
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: "Manrope"
    }

    RowLayout {
        id: outsideTempWidget
        opacity: 0.5
        anchors.top: parent.top
        anchors.topMargin: 146
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 4
        Image {
            id: mingcute_suncloudyline
            source: "images/mingcute_sun-cloudy-line.svg"
            fillMode: Image.PreserveAspectFit
            Layout.preferredWidth: 24
        }

        Text {
            id: outsideTemp
            color: "#ffffff"
            text: qsTr("16°")
            font.pixelSize: 24
            font.family: "Manrope"
        }
    }

    Button {
        id: mainTempButton
        x: 182
        y: 210
        width: 236
        height: 192
        opacity: 0
        text: qsTr("Button")

        Connections {
            target: mainTempButton
            onClicked: console.log("clicked")
        }

        Connections {
            target: mainTempButton
            onClicked: startView.state = "TempState"
        }
    }

    Button {
        id: forecastButton
        x: 250
        y: 150
        opacity: 0
        text: qsTr("Button")

        Connections {
            target: forecastButton
            onClicked: startView.state = "ForecastState"
        }
    }
}
