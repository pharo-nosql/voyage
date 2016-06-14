private replication
debugLog: anObject
	"Debugging"
	
	self isDebug ifTrue: [
		(DateAndTime now asString, ': ', anObject asString) logCr ]