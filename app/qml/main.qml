import QtQuick 2.2
import QtQuick.Controls 1.3 as Controls
import QtQuick.Controls.Styles 1.3


Controls.ApplicationWindow {
  visible: true

  style: ApplicationWindowStyle {
    background: Rectangle {
      color: "white"
    }
  }

  width: 800
  height: 600

  Column {
    id: local

    width: 200
    height: parent.height

    Rectangle {
      id: header

      width: parent.width
      height: 50
    }

    ListView {
      width: parent.width
      height: parent.height - 50

      model: [
        "my-first-project",
        "gravity",
        "giant"
      ]

      delegate: Row {
        spacing: 10
        height: 50

        AwesomeIcon {
          width: 50
          height: parent.height

          size: 18
          name: "database"
          color: "green"
        }

        Label {
          text: modelData
          style: "subheading"
          anchors.verticalCenter: parent.verticalCenter
        }
      }
    }
  }

  Column {
    id: remote

    anchors.left: local.right
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom

    Row {
      id: search
      height: 50
      width: parent.width
      spacing: 10

      AwesomeIcon {
        name: "search"
        size: 18
        width: 40
        color: "#AAA"
        anchors.verticalCenter: parent.verticalCenter
      }

      TextEdit {
        height: parent.height
        width: parent.width - 18
        font.family: "OpenSans"
        font.pixelSize: 18
        color: "#333"
        verticalAlignment: TextEdit.AlignVCenter
      }
    }

    Controls.ScrollView {
      width: parent.width
      height: parent.height - 50

      horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
      verticalScrollBarPolicy: Qt.ScrollBarAlwaysOn

      Grid {
        id: grid
        columns: 2

        Repeater {
          model: 20
          delegate: gridItem
        }
      }
    }
  }

  Component {
    id: gridItem

    Item {
      width: 256
      height: 152

      Rectangle {
        anchors.fill: parent
        anchors.margins: 10

        clip: true

        border.width: 1
        border.color: "#DDD"

        Row {
          anchors.fill: parent
          // anchors.margins: 1

          Rectangle {
            width: 60
            height: parent.height
            border.width: 1
            border.color: "#DDD"
            
            Image {
              source: "https://raw.githubusercontent.com/mottosso/be-ad/master/thumbnail.png"
              anchors.fill: parent
              anchors.rightMargin: 1
            }
          }

          Column {
            id: body
            height: parent.height
            width: parent.width - 60

            Column {
              width: parent.width
              height: parent.height - 40
                
              Item {
                width: parent.width
                height: 20

                Label {
                  id: contentAuthor
                  anchors.fill: parent
                  anchors.margins: 5
                  text: "kitematic"
                  style: "caption"
                  color: "#51abf3"
                }                
              }

              Item {
                width: parent.width
                height: 20

                Label {
                  id: contentHeader
                  anchors.fill: parent
                  anchors.margins: 5
                  text: "film"
                  style: "subheading"
                  font.weight: Font.DemiBold
                }
              }

              Item {
                width: parent.width
                height: parent.height - 20 - 20

                Label {
                  id: contentBody
                  anchors.fill: parent
                  anchors.margins: 5
                  text: "A generic film project configuration preset"
                  wrapMode: Text.WordWrap
                }
              }
            }

            Row {
              width: parent.width
              height: 40
              spacing: -1

              Rectangle {
                width: parent.width - 88
                height: parent.height
                border.width: 1
                border.color: "#DDD"
                
                Row {
                  id: hearts
                  anchors.fill: parent
                  anchors.margins: 5
                  spacing: 5

                  AwesomeIcon {
                    name: "heart-o"
                    color: "#AAA"
                    size: 13
                    anchors.verticalCenter: parent.verticalCenter
                  }

                  Label {
                    text: "49"
                    anchors.verticalCenter: parent.verticalCenter
                  }
                }
              }

              Rectangle {
                id: more
                height: parent.height
                width: 40
                border.width: 1
                border.color: "#DDD"

                AwesomeButton {
                  name: "bars"
                  color: "#AAA"
                  size: 18
                  anchors.centerIn: parent
                }
              }

              Rectangle {
                id: create
                width: 50
                height: parent.height
                border.width: 1
                border.color: "#51abf3"

                Label {
                  color: "#51abf3"
                  text: "CREATE"
                  anchors.centerIn: parent
                  font.pixelSize: 10
                  font.weight: Font.DemiBold
                }
              }
            }
          }
        }
      }
    }
  }
}