versioning
newVersion
	"
	a 4-byte value representing the seconds since the Unix epoch,	
	a 3-byte machine identifier,
	a 2-byte process id, and
	a 3-byte counter, starting with a random value.
	"
	^ ((self toByteArray: DateAndTime now asUnixTime size: 4), 
	  self machineId, 
	  (self toByteArray: self processId size: 2), 
	  (self toByteArray: self nextCount size: 3))
	asInteger
	
	
	