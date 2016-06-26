private
resetIfCurrent: token
	"Reset mongo urls, only if token is still current."
	
	mutex critical: [
		currentToken == token ifTrue: [ 
			self basicReset.
			currentToken := Object new ]]