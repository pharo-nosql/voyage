tests
testFinalizationShouldRemoveMonitorsFromServiceCollectionWhenTheyAreNotRunning

	| before repository after monitorNames processesToKill |

	"Force collection and finalization"
	3 timesRepeat: [ Smalltalk garbageCollect ].

	before := TKTConfiguration serviceManager services select: [ :e | e isKindOf: MongoMonitor ].

	repository := self newRepository.

	"Kill all worker processes from outside, it might happen..."
	monitorNames := repository sdamClient monitors values collect: [ :e | e name ]. 
	processesToKill := Process allInstances select: [:e | monitorNames includes: e name].
	processesToKill do: [:e | e terminate].

	repository := nil.
	
	"Force collection and finalization"
	3 timesRepeat: [ Smalltalk garbageCollect ].
	
	after :=  TKTConfiguration serviceManager services select: [ :e | e isKindOf: MongoMonitor ].
	
	self assertCollection: after hasSameElements: before