import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4

Item {
    property alias cfg_scaleValue: scaleValue.value

    
    GridLayout {
        columns: 2
        columnSpacing: 50; rowSpacing: 3
        Layout.fillWidth: true
        anchors.right: parent.right
        anchors.left: parent.left
        
        Label {
            Layout.row: 0
            Layout.column: 1
            text: i18n("Scale:")
        }
        Slider {
            Layout.row: 1
            Layout.column: 1
            id: scaleValue
            stepSize: 0.1
            minimumValue: 0.2
            maximumValue: 4.0
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight
        }
    }
}

