import QtQuick 2.15

Row {
    id: forecast
    width: 256
    height: 146
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 124
    anchors.horizontalCenterOffset: 0
    anchors.horizontalCenter: parent.horizontalCenter

    Column {
        id: dayTempTue
        width: 64
        height: 146
        spacing: 8

        Text {
            id: dayName
            color: "#ffffff"
            text: qsTr("Tue")
            font.pixelSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: "Manrope"
        }

        Image {
            id: mingcute_sunline
            source: "images/mingcute_sun-line.svg"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Column {
            id: bottomTemp
            width: 45
            height: 60
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: -10

            Text {
                id: dayTemp
                color: "#ffffff"
                text: qsTr("30°")
                font.pixelSize: 24
                style: Text.Normal
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Manrope"
            }

            Text {
                id: nightTemp
                opacity: 0.4
                color: "#ffffff"
                text: qsTr("12°")
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Manrope"
            }
        }
    }

    Column {
        id: dayTempWed
        width: 64
        height: 146
        spacing: 8
        Text {
            id: dayName1
            color: "#ffffff"
            text: qsTr("Wed")
            font.pixelSize: 16
            font.family: "Manrope"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: mingcute_sunline1
            source: "images/mingcute_sun-cloudy-line.svg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Column {
            id: bottomTemp1
            width: 45
            height: 60
            spacing: -10
            Text {
                id: dayTemp1
                color: "#ffffff"
                text: qsTr("22°")
                font.pixelSize: 24
                font.family: "Manrope"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: nightTemp1
                opacity: 0.4
                color: "#ffffff"
                text: qsTr("10°")
                font.pixelSize: 24
                font.family: "Manrope"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Column {
        id: dayTempThu
        width: 64
        height: 146
        spacing: 8
        Text {
            id: dayName2
            color: "#ffffff"
            text: qsTr("Thu")
            font.pixelSize: 16
            font.family: "Manrope"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: mingcute_sunline2
            source: "images/mingcute_sun-cloudy-line.svg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Column {
            id: bottomTemp2
            width: 45
            height: 60
            spacing: -10
            Text {
                id: dayTemp2
                color: "#ffffff"
                text: qsTr("28°")
                font.pixelSize: 24
                font.family: "Manrope"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: nightTemp2
                opacity: 0.4
                color: "#ffffff"
                text: qsTr("13°")
                font.pixelSize: 24
                font.family: "Manrope"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Column {
        id: dayTempFri
        width: 64
        height: 146
        spacing: 8
        Text {
            id: dayName3
            color: "#ffffff"
            text: qsTr("Fri")
            font.pixelSize: 16
            font.family: "Manrope"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: mingcute_sunline3
            source: "images/mingcute_rain-line.svg"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Column {
            id: bottomTemp3
            width: 45
            height: 60
            spacing: -10
            Text {
                id: dayTemp3
                color: "#ffffff"
                text: qsTr("18°")
                anchors.left: parent.left
                anchors.leftMargin: 6
                font.pixelSize: 24
                font.family: "Manrope"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: nightTemp3
                opacity: 0.4
                color: "#ffffff"
                text: qsTr("11°")
                font.pixelSize: 24
                font.family: "Manrope"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"87d1506f19ab571bc4978a2a1017fdc3"}D{i:1;uuid:"fe9b170c3248ca2298816d1d6d3192b6"}
D{i:2;uuid:"5ab814a163b8d75a0f7b9b243f9d0b60"}D{i:3;uuid:"857478a56a732ade71a9bc6c07ac8cee"}
D{i:4;uuid:"9263c76dcbdc2b003fbf9c6f39ae4365"}D{i:5;uuid:"382a34dfbaa8265bc7b6a6e39c5f3567"}
D{i:6;uuid:"197f81ec82ead327527daff75da48198"}D{i:7;uuid:"ff80a20c11b3caa834f5f68422b42b1f"}
D{i:8;uuid:"b3cd3336a258614edac2d76cde9478bf"}D{i:9;uuid:"a8034c08f9b10552749529be3da7f783"}
D{i:10;uuid:"511a8ab3ebedbe98636ba83fda2824b4"}D{i:11;uuid:"cde60386366f9ecdb63d1c2d588b473a"}
D{i:12;uuid:"04bc92bad8f1ed80f18dd29be08ede0c"}D{i:13;uuid:"15d818c3af5c224a8fe7b43f66d42de5"}
D{i:14;uuid:"9082e34e3c7b201d3c3b211b7de6ac92"}D{i:15;uuid:"6b79a2f3f8105d5489424f031160f416"}
D{i:16;uuid:"f82e5771586f718d2766c24cdc930570"}D{i:17;uuid:"4707e3588d77ea999245841dab9707d8"}
D{i:18;uuid:"0869b76df2cce63cd234baa33bbc4028"}D{i:19;uuid:"01fd91fb0d40d1676459d7596451c969"}
D{i:20;uuid:"115e70d7807bfdd113ea73a9105d3954"}D{i:21;uuid:"c358a4f480e9c563adb8d3f17aa8aad6"}
D{i:22;uuid:"fe9beb9329c1e412338aab7c3e3659b2"}D{i:23;uuid:"9cf476cb5990352946007d8c166f2304"}
D{i:24;uuid:"7f901bb764aafcb7c83026fd8def230f"}
}
##^##*/
