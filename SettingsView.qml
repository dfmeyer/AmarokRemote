import QtQuick 1.1

Rectangle {
	id: settingsView
	anchors.fill: parent
	opacity: 0
	Behavior on opacity { PropertyAnimation { duration: 1000 } }
	color: "transparent"
	
	Column {
		anchors.fill: parent
		Row {
			height: parent.height/9
			width: parent.width
			Text {
				height: parent.height
				width: parent.width/2
				text: "IP Address:"
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			Text {
				id: ipAddress
				height: parent.height
				width: parent.width/2
				text: settingsInfo.ipAddress
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			
		}
		Row {
			height: parent.height/9
			width: parent.width
			Text {
				height: parent.height
				width: parent.width/2
				text: "Port:"
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			Text {
				id: portAddress
				height: parent.height
				width: parent.width/2
				text: settingsInfo.portAddress
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			
		}
	}
}