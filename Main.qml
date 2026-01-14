import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "C++ on Android"
    
    // 整个屏幕背景变蓝
    background: Rectangle { color: "#E0F7FA" }

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "Hello from GitHub!"
            font.pixelSize: 30
            color: "black"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: "点击测试"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                text = "构建成功！"
            }
        }
    }
}
