import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Lesson_4_4")

    Item {
        width: bg.width
        height: bg.height

        Rectangle {
            id: bg
            width: 640
            height: 480
            color: '#4A4A4A'
        }

        MouseArea {
            id: backgroundClicker
            anchors.fill: parent
            onClicked: {
                circle.x = 84
                box.rotation = 0
                triangle.rotation = 0
                triangle.scale = 1.0
            }
        }

        ClickableImage {
            id: circle
            x: 184; y: 168
            width: 100; height: 100
            source: "file:///C:/Users/user/Documents/Lesson_4_4/assets/circle.png"
            antialiasing: true
            onClicked: {
                x += 20
            }
        }

        ClickableImage {
            id: box
            x: 264; y: 168
            width: 100; height: 100
            source: "file:///C:/Users/user/Documents/Lesson_4_4/assets/square.png"
            antialiasing: true
            onClicked: {
                rotation += 15
            }
        }

        ClickableImage {
            id: triangle
            x: 348; y: 168
            width: 100; height: 100
            source: "file:///C:/Users/user/Documents/Lesson_4_4/assets/triangle.png"
            antialiasing: true
            onClicked: {
                rotation += 15
                scale += 0.05
            }
        }

        function _test_transformed() {
            circle.x += 20
            box.rotation = 15
            triangle.scale = 1.2
            triangle.rotation = -15
        }

        function _test_overlap() {
            circle.x += 40
            box.rotation = 15
            triangle.scale = 2.0
            triangle.rotation = 45
        }

    }
}
