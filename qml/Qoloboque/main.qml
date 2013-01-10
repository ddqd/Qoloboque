import QtQuick 1.1

Rectangle {
    width: 360
    height: 360
    id:rec
            Image {
                id: yoba
                x: 130
                y: 120
                fillMode: Image.PreserveAspectFit
                source: "qrc:yoba"
                rotation: 0
                smooth: true

                MouseArea {
                    id: mouseArea
                    x: -36
                    y: -12
                    width: 170
                    height: 170
                    hoverEnabled: true
                    onMousePositionChanged:    {
                        yoba.x = yoba.x+(Math.random()*50-25)
                        yoba.y = yoba.y+(Math.random()*50-25)
                        yoba.rotation = Math.random()*120-60
                    }
                }
            }


Timer {
     id: timer
     interval: 5000; running: true; repeat: true
     onTriggered: {
        yoba.x = 130
        yoba.y = 120
        yoba.rotation = 0
     }
  }

}





