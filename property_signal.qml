import QtQuick 2.2
import QtQuick.Controls 1.2

Rectangle{
    width: 320;
    height: 240;
    color:"gray";



    Text{
        id:hello;
        anchors.centerIn: parent;
        text:"Hello Word!";
        font.pixelSize: 32;
        color: "blue";
        onTextChanged: {
            console.log(text);
        }
    }


    Button {
        id:changeButton;
        text: "change";
        anchors.top:hello.bottom;
        anchors.horizontalCenter: parent.horizontalCenter;
        onClicked: {
            hello.text = "Hello Qt Quick";
        }
    }


    Connections{
        target: changeButton;
        onClicked:{
            hello.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
          //  text2.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
        }
    }

}
