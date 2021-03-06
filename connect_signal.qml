import QtQuick 2.2

Rectangle{
    id: forwarder;
    width: 100;
    height: 100;
    color:"#C0C0C0";

    signal send();
    onSend: console.log("send click!");

    MouseArea{
        id: mousearea;
        anchors.fill: parent;
        onClicked: console.log("Mousearea clicked");
    }
  
    Component.onCompleted:  {
    mousearea.clicked.connect(send);
}

}

