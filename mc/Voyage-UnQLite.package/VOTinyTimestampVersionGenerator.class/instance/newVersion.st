versioning
newVersion
	"
	a 2-byte machine identifier,
	a 4-byte value representing the milliseconds,	
	a 2-byte counter.
	"
	self mutex critical: [ 
	  ^ self enforceSignedValue: (self machineId,
			(self toByteArray: DateAndTime now asDuration asMilliSeconds size: 4),
	  		(self toByteArray: self nextCount size: 2))
			asInteger ]