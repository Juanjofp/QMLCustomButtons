import QtQuick
import QtQuick.Controls

Button {
    id: myButtonId

    implicitWidth: 100
    implicitHeight: 50

    property string kind: "primary"
    property string action1: "newtral"

    property alias label: textId.text

    property var style: ({
                             "primary": {
                                 "newtral": {
                                     "default": {
                                         "color": "red",
                                         "borderColor": "blue",
                                         "textColor": "green"
                                     },
                                     "pressed": {
                                         "color": "pink",
                                         "borderColor": "yellow",
                                         "textColor": "black"
                                     }
                                 },
                                 "nonewtral": {
                                     "default": {
                                         "color": "grey",
                                         "borderColor": "black",
                                         "textColor": "black"
                                     },
                                     "pressed": {
                                         "color": "dodgerblue",
                                         "borderColor": "green",
                                         "textColor": "white"
                                     }
                                 }
                             },
                             "secondary": {
                                 "newtral": {
                                     "default": {
                                         "color": "red",
                                         "borderColor": "blue",
                                         "textColor": "green"
                                     },
                                     "pressed": {
                                         "color": "pink",
                                         "borderColor": "yellow",
                                         "textColor": "black"
                                     }
                                 },
                                 "nonewtral": {
                                     "default": {
                                         "color": "white",
                                         "borderColor": "black",
                                         "textColor": "grey"
                                     },
                                     "pressed": {
                                         "color": "pink",
                                         "borderColor": "yellow",
                                         "textColor": "black"
                                     }
                                 }
                             },
                             "terceary": {
                                 "newtral": {
                                     "default": {
                                         "color": "lemonchiffon",
                                         "borderColor": "maroon",
                                         "textColor": "mediumaquamarine"
                                     },
                                     "pressed": {
                                         "color": "midnightblue",
                                         "borderColor": "olive",
                                         "textColor": "yellowgreen"
                                     }
                                 },
                                 "nonewtral": {
                                     "default": {
                                         "color": "sienna",
                                         "borderColor": "purple",
                                         "textColor": "grey"
                                     },
                                     "pressed": {
                                         "color": "darkslategray",
                                         "borderColor": "blanchedalmond",
                                         "textColor": "aqua"
                                     }
                                 }
                             }
                         })

    background: Rectangle {
        id: backgroundId

        color: myButtonId.style[kind][action1]["default"].color
        border {
            width: 2
            color: myButtonId.style[kind][action1]["default"].borderColor
        }
    }

    contentItem: Label {
        id: textId

        anchors.centerIn: parent

        color: myButtonId.style[kind][action1]["default"].textColor
    }

    states: [
        State {
            when: myButtonId.pressed
            PropertyChanges {
                target: backgroundId
                color: myButtonId.style[kind][action1]["pressed"].color
                border.color: myButtonId.style[kind][action1]["pressed"].borderColor
            }
            PropertyChanges {
                target: textId
                color: myButtonId.style[kind][action1]["pressed"].textColor
            }
        }
    ]
}
