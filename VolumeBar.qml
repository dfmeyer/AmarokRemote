import QtQuick 1.1

Rectangle{
	id: sliderRoot
	color: "transparent"
	width: parent.width
	height: parent.height
	
	Rectangle {
		id: guideBar
		color: "#ececec"
		width: parent.width*9/10
		height: parent.height*3/10
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		radius: 12
		smooth: true
		
		Rectangle{
			id: sliderHold
			color: "darkGrey"
			x:0
			radius: 24
			width: parent.width*1/15
			height: parent.height*4/3
			anchors.verticalCenter: parent.verticalCenter
			smooth: true
			
			MouseArea{
				anchors.fill: parent
				drag.target: sliderHold
				drag.axis: "XAxis"
				drag.minimumX: 0
				drag.maximumX: guideBar.width - sliderHold.width
				onReleased: sliderAction.sendValue(sliderHold.x/(guideBar.width - sliderHold.width)*100)
			}
		}
		
	}
	
}