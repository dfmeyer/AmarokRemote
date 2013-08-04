import QtQuick 1.1

Rectangle {
	id: buttonRoot
	
	property alias iconURL: iconImage.source
	width: parent.width/5
	height: parent.height/5
	color: "transparent"
	property string actionSignal: "<Pressed>"
	
	Text {
		id: buttonText
		text: "<Text>"
		anchors.centerIn: parent
	}
	
	Image {
		id: iconImage
		source: "missing.svg"
		anchors.fill:parent
		smooth: true
		fillMode: Image.PreserveAspectFit
		
		MouseArea {
			anchors.fill: parent	
			onClicked:{
				buttonAction.sendAction(buttonRoot.actionSignal)
			}
		}
	}
	
}