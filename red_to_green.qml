import QtQuick 2.2


Rectangle{
    width: 360;
    height: 240;
    color: "#EEEEEE";
    id: rootItem;

    Rectangle {
        id: rect;
        width: 60;
        height: 60;
        radius: 30;
        anchors.centerIn: parent;
	color: "red";

        MouseArea {
            id:mouseArea;
            anchors.fill: parent;
            onClicked:
                ColorAnimation {
                target: rect;
                property: "color";
                to: "green";
                duration: 1500;
            }
        }
    }
}

