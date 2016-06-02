private replication
logRecoveringFrom: anObject
	"DEBUGGING only"
	
	(self class name, ': Recovering from ', anObject asString) logCr