import QtQuick 2.2
import QtQuick.Controls 1.2

Rectangle{
    width: 480;
    height: 320;
    color:"#121212";

    BusyIndicator{
        id:busy;
        running:true;
        anchors.centerIn: parent;
        z:2;
    }

    Text{
        id:stateLabe1;
        visible: false;
        anchors.centerIn: parent;
        z:3;
    }

    Image {
        id: imageViewer;
        asynchronous: true;
        cache: false;
        anchors.fill: parent;
        fillMode: Image.PreserveAspectFit;
        onStatusChanged: {
            if(imageViewer.status === Image.Loading){
                busy.running = true;
                stateLabe1.visible = false;
            }else if(imageViewer.status === Image.Ready){
            busy.running = false;
        }else if (imageViewer.status === Image.Error){
                busy.running = false;
                stateLabe1.visible = true;
                stateLabe1.text = "ERROR";
            }
        }
        }

   Component.onCompleted: {
       imageViewer.source = "http://img14.poco.cn/mypoco/myphoto/20130302/17/3926359420130302172442085_640.jpg";
   }

}
