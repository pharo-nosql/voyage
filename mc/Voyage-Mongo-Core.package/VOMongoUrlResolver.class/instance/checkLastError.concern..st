api
checkLastError: db concern: aConcern
	"Check last error after a persistence mongodb operation (if necessary)"
	
	^ self subclassResponsibility