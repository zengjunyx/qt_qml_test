import QtQuick 2.2
import QtQuick.Controls 1.2

import QtQuick 2.2
import QtQuick.Controls 1.2

Rectangle{
    width: 320;
    height: 240;
    color:"gray";



    Text{
        id:text1;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        anchors.topMargin: 20;
        text:"Text One";
        font.pixelSize: 28;
        color: "blue";
    }
    Text {
        id:text2;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: text1.bottom;
        anchors.topMargin: 20;
        text:"Text Two";
        font.pixelSize: 28;
        color: "blue";
    }

    Button {
        id:changeButton;
        text: "change";
        anchors.top:text2.bottom;
        anchors.topMargin: 20;
        anchors.horizontalCenter: parent.horizontalCenter;
    }


    Connections{
        target: changeButton;
        onClicked:{
            text1.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            text2.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
        }
    }

}
