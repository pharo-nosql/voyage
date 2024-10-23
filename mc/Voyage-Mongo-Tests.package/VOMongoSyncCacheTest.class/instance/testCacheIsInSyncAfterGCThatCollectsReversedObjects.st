tests
testCacheIsInSyncAfterGCThatCollectsReversedObjects
	| allPilots pilot laterDuplicated |
	
	"See https://github.com/pharo-nosql/voyage/issues/187"
		
	allPilots :=  repository selectAll: VOTestPilot .
	
	self 
		assert: repository cache objects size 
		equals: repository cache reversedObjects size.
	
	pilot := allPilots first.
	allPilots := nil.
	Smalltalk garbageCollect.

	self 
		assert: repository cache objects size 
		equals: repository cache reversedObjects size.

	laterDuplicated := (repository selectAll: VOTestPilot) last.
	repository save: laterDuplicated.
	
	self 
		assert: repository cache objects size 
		equals: repository cache reversedObjects size.
		
	Smalltalk garbageCollect.
	self 
		assert: repository cache objects size 
		equals: repository cache reversedObjects size