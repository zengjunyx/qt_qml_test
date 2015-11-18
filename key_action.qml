import QtQuick 2.2

Rectangle{
    width: 300;
    height: 200;
    color: "#c0c0c0";
    focus: true;
    Keys.enabled: true;
    Keys.onEscapePressed: Qt.quit();
    Keys.onBackPressed: Qt.quit();
    Keys.onPressed: {
        switch(event.key){
        case Qt.key_0:
        case Qt.key_1:
        case Qt.key_2:
        case Qt.key_3:
        case Qt.key_4:
        case Qt.key_5:
        case Qt.key_6:
        case Qt.key_7:
        case Qt.key_8:
        case Qt.key_9:
            event.accept = true;
            keyView.text = event.key - Qt.Key_0;
            break;
        }
    }

    Text {
        id: keyView;
        font.bold: true;
        font.pixelSize: 24;
        text:qsTr("text");
        anchors.centerIn: parent;
    }
}
