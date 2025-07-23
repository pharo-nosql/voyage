tests
testFinalizationShouldRemoveMonitorsFromServiceCollectionWhenTheyAreRunning

	| before repository after |
	
	before := TKTConfiguration serviceManager services select: [ :e | e isKindOf: MongoMonitor ].

	repository := self newRepository.
	repository := nil.
	
	"Force collection and finalization"
	3 timesRepeat: [ Smalltalk garbageCollect ].
	
	after :=  TKTConfiguration serviceManager services select: [ :e | e isKindOf: MongoMonitor ].
	
	self assertCollection: after hasSameElements: before