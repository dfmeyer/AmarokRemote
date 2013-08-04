import QtQuick 1.1

Rectangle {
	id: mainView
	color: "transparent"
	anchors.fill: parent
	opacity: 1
	Behavior on opacity { PropertyAnimation { duration: 1000 } }

	Column {
		anchors.fill: parent
		Text{
			id: currentSong
			height: parent.height/6
			width: parent.width
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter
			font.pixelSize: height/3
			text: mediaInfo.currentSong
			color: "#ececec"
		}
		
		Image {
			id: albumCover
			height: parent.height/2
			width: parent.width
			fillMode: Image.PreserveAspectFit
			source: mediaInfo.albumCover
			smooth: true
		}
		
		Row {
			height: parent.height/9
			width: parent.width
			Text {
				height: parent.height
				width: parent.width/2
				text: "Artist:"
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			Text {
				id: artistName
				height: parent.height
				width: parent.width/2
				text: mediaInfo.artistName
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
				text: "Album:"
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			Text {
				id: albumName
				height: parent.height
				width: parent.width/2
				text: mediaInfo.albumName
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
				text: "Genre:"
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			Text {
				id: genreName
				height: parent.height
				width: parent.width/2
				text: mediaInfo.genreName
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				font.pixelSize: height/3
				color: "#ececec"
			}
			
		}
	}	
		
}