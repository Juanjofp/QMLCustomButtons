import QtQuick
import QtQuick.VirtualKeyboard
import QtQuick.Layouts

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    GridLayout {

        columns: 3

        MyButton {
            label: "Button 1"

            kind: "primary"
            action1: "newtral"
        }

        MyButton {
            label: "Button 2"

            kind: "secondary"
            action1: "newtral"
        }

        MyButton {
            label: "Button 3"

            kind: "primary"
            action1: "nonewtral"
        }

        MyButton {
            label: "Button 4"

            kind: "secondary"
            action1: "nonewtral"
        }

        MyButton {
            label: "Button 5"

            kind: "terceary"
            action1: "newtral"
        }

        MyButton {
            label: "Button 6"

            kind: "terceary"
            action1: "nonewtral"
        }
    }
}
