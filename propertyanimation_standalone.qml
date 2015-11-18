import QtQuick 2.2


Rectangle{
    width: 320;
    height: 240;
    color: "#EEEEEE";
    id: rootItem;
    property var colorPickerShow: false;

    Rectangle {
        id: rect;
        width: 150;
        height: 150;
        anchors.centerIn: parent;
        color: "blue";

        PropertyAnimation{
            id:animation;
            target: rect;
            properties: "width,height";
	    from: 0;
            to: 150;
            duration:  1000;
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: animation.running = true;
        }
    }
}

