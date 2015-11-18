import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Dialogs 1.2

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
    Button {
        id:openFile;
        text: "open";
        anchors.left: parent.left;
        anchors.leftMargin: 8;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 8;
        style: ButtonStyle{
            background: Rectangle{
                implicitWidth: 70;
                implicitHeight: 25;
                color: control.pressed ? 2 : 1 ;
                border.width: control.pressed ? 2 : 1;
                border.color: (control.hovered || control.pressed)
                              ? "green" : "#888888" ;
            }
        }
        onClicked: fileDialog.open();
        z:4
    }

    Text {
        id: imagePath;
        anchors.left: openFile.right;
        anchors.leftMargin: 8;
        anchors.verticalCenter: openFile.verticalCenter;
        font.pixelSize: 18;
    }

    FileDialog {
        id: fileDialog;
        title: "Please choose a file";
        nameFilters: ["Image Files(*.jpg *.png *.gif)"];
        onAccepted: {
            imageViewer.source = fileDialog.fileUrl;
            var imageFile = new String(fileDialog.fileUrl);
            //remove file:///
            imagePath.text = imageFile.slice(8);

    }

  }

}

