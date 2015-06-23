import QtQuick 2.3

Item {
    id: button

    property Action action

    property int elevation

    property string name: action ? action.iconName : ""
    property int size: 14
    property alias color: icon.color

    property int padding: 20

    width: view.width
    height: view.height

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (action) action.triggered(icon)
        }
    }

    View {
        id: view

        elevation: button.elevation

        width: button.size + 4
        height: button.size + 4

        AwesomeIcon {
            id: icon
            name: button.name
            anchors.fill: parent
            size: button.size
        }
    }
}