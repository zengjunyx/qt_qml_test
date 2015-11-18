import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle{
    width: 300;
    height: 200;

    Component{
        id: btnStyle;
        ButtonStyle{
            background: Rectangle{
                implicitWidth: 70;
                implicitHeight: 25;
                color:"#DDDDDD";
                border.width: control.pressed ? 2 : 1;
                border.color: (control.hovered || control.pressed)
                    ? "green" : "#888888";
            }
        }
    }

    Text{
        id:text1;
        anchors.centerIn: parent;
        text: "pelase click button!";
    }

    Button {
        id: button1;
        text:"button1";
        style: btnStyle;
        onClicked: {
            text1.text = "btton1 clicked";
          }
        }

    Button {
        text:"button2";
        anchors.right : parent.right;
        style: btnStyle;
        onClicked: {
            text1.text = "btton2 clicked";
          }
        }

}

