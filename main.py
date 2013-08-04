'''
Documentation, License etc.

@package AmarokRemote
'''
import sys
from PySide import QtCore, QtGui, QtDeclarative

class sliderAction(QtCore.QObject):
	"""Class that handles the button presses and sends the output over the 
	network"""
	@QtCore.Slot(int)
	def sendValue(self, signal):
		print signal

class mediaInformationLoader(QtCore.QObject):
	"""Class the gets media information about the currently playing track 
	and updates the qml Media view with it"""
	
	def __init__(self,context):
		QtCore.QObject.__init__(self)
		
		self._media = {
				"currentSong":"<Song>",
				"albumCover":"icons/artist.svgz",
				"artistName":"<Artist>",
				"albumName":"<album>",
				"genreName":"<genre>"
				}
		
		self._context = context
		self._context.setContextProperty("mediaInfo",self._media)
		
	def updateInfo(self,newMedia):
		self._context.setContextProperty("mediaInfo",newMedia)
		
class settingsInformationLoader(QtCore.QObject):
	"""Class the gets media information about the currently playing track 
	and updates the qml Media view with it"""
	
	def __init__(self,context):
		QtCore.QObject.__init__(self)
		
		self._settings = {
				"ipAddress":"<IP>",
				"portAddress":"<Port>",
				"username":"<username>",
				"password":"<password>"
				}
		
		self._context = context
		self._context.setContextProperty("settingsInfo",self._settings)
		
	def updateInfo(self,newSettings):
		self._context.setContextProperty("settingsInfo",newSettings)
			
class buttonAction(QtCore.QObject):
	"""Class that handles the button presses and sends the output over the 
	network"""
	
	@QtCore.Slot(str)
	def sendAction(self, signal):
		print signal
		if signal == "previous":
			test = {
				"currentSong":"Ice Ice Baby",
				"albumCover":"icons/artist.svgz",
				"artistName":"Vanilla Ice",
				"albumName":"1 hit wonders",
				"genreName":"Terrible Music"
				}
			mediaLoader.updateInfo(test)
			
			
		# Send signal over network
		
if __name__ == '__main__':
	
	app = QtGui.QApplication(sys.argv)
	view = QtDeclarative.QDeclarativeView()
	
	buttons = buttonAction()
	slider = sliderAction()
	context = view.rootContext()
	context.setContextProperty("buttonAction", buttons)
	context.setContextProperty("sliderAction", slider)
	
	mediaLoader = mediaInformationLoader(context)
	settingsLoader = settingsInformationLoader(context)
	
	view.setSource(QtCore.QUrl('view.qml'))
	view.setResizeMode(QtDeclarative.QDeclarativeView.SizeRootObjectToView)
	view.show()
	sys.exit(app.exec_())