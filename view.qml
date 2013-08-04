import QtQuick 1.1

Rectangle {
	id: page
	width: 720 
	height: 1280
	color: "black"
	
	Column {
		id: row1
		anchors.fill: parent
		spacing: 0
		Row{
			spacing: 2
			height: parent.height*1.5/20
			width: parent.width
			
			Rectangle {
				id: mainViewChanger
				width: parent.width/2
				height: parent.height
				property string actionSignal: "<saveSettings>"
				color: "darkgrey"
				Behavior on color { PropertyAnimation { duration: 1000 } }
				Text {
					text: "Now Playing"
					anchors.centerIn: parent
					color: "white"
					font.pixelSize: parent.height/2
				}
				
				MouseArea {
					anchors.fill: parent
					onClicked: {mainView.opacity = 1;
						settingsView.opacity = 0;
						mainViewChanger.color = "darkgrey";
						settingsViewChanger.color = "lightgrey";
					}
				}
				
			}
			
			Rectangle {
				id: settingsViewChanger
				width: parent.width/2
				height: parent.height
				color: "lightgrey"
				Behavior on color { PropertyAnimation { duration: 1000 } }
				property string actionSignal: "<saveSettings>"				
				Text {
					text: "Settings"
					anchors.centerIn: parent
					color: "white"
					font.pixelSize: parent.height/2
				}
				
				MouseArea {
					anchors.fill: parent
					onClicked: {mainView.opacity = 0;
						settingsView.opacity = 1;
						settingsViewChanger.color = "darkgrey";
						mainViewChanger.color = "lightgrey";
					}
				}
				
			}
		}
		Item{
			width: parent.width
			height: parent.height*15/20
			

			MediaView{
				id: mainView
			}
				
				
			SettingsView{
				id: settingsView
			}
			
				
		}
		
		Row{
			width: parent.width
			height: parent.height*1.5/20
			
			VolumeBar {
				width: parent.width*5/6
				height: parent.height
				
			}
			Button {
				id: muteButton
				iconURL: "icons/muted.svgz"
				width: parent.width/6
				height: parent.height*8/10
				anchors.verticalCenter: parent.verticalCenter
				actionSignal: "mute"
				
			}
		}
		
		Row{
			width: parent.width
			height: parent.height*2/20
			spacing: 2
			Button {
				id: previousButton
				iconURL: "icons/previous.svgz"
				width: parent.width/6-2
				height: parent.height
				actionSignal: "previous"
			}
			Button {
				id: backwardButton
				iconURL: "icons/backward.svgz"
				width: parent.width/6-3
				height: parent.height
				actionSignal: "backward"
			}			
			Button {
				id: stopButton
				iconURL: "icons/stop.svgz"
				width: parent.width/6-2
				height: parent.height
				actionSignal: "stop"
			}
			Button {
				id: playButton
				iconURL: "icons/play.svgz"
				width: parent.width/6-2
				height: parent.height
				actionSignal: "play/pause"
			}
			Button {
				id: forwardButton
				iconURL: "icons/forward.svgz"
				width: parent.width/6-2
				height: parent.height
				actionSignal: "forward"
			}
			Button {
				id: nextButton
				iconURL: "icons/next.svgz"
				width: parent.width/6
				height: parent.height
				actionSignal: "next"
			}
		}
	}
}
