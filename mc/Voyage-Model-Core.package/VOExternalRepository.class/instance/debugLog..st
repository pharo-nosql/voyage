private
debugLog: anObject
	"Debugging log"

	self isDebug ifTrue: [ 
		(DateAndTime now asString , ': ' , anObject asString) traceCr ]