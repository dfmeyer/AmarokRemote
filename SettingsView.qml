import QtQuick 1.1

Rectangle {
	id: settingsView
	anchors.fill: parent
	opacity: 0
	Behavior on opacity { PropertyAnimation { duration: 12 } }
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
		
		Row {
			height: parent.height/9
			width: parent.width
			Text {
				height: parent.height
				width: parent.width/2
				text: "Username:"
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			Text {
				id: username
				height: parent.height
				width: parent.width/2
				text: settingsInfo.username
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
				text: "Password:"
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			Text {
				id: password
				height: parent.height
				width: parent.width/2
				text: settingsInfo.password
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
		}
		
		Button {
			id: connectionRefresh
			iconURL: "icons/refresh.svgz"
			width: parent.width
			height: parent.height/7
			actionSignal: "connectionRefresh"
		}
	}
}