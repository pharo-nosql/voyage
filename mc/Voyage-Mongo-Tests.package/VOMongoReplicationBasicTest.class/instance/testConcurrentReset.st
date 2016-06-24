tests
testConcurrentReset

	| numberOfResets timeToSerialResets semaphores timeToConcurrentResets |
	numberOfResets := 7.
	semaphores := (1 to: numberOfResets) collect: [:i | Semaphore new].
	repository := MongoReplicationTestResources newRepositoryOnA.
	repository debug: true.

	"Measure time to concurrently reset."
	timeToConcurrentResets := [
		semaphores do: [ :each | [ [repository reset] ensure: [each signal] ] fork ].	
		semaphores do: [ :each | each waitTimeoutSeconds: 1 ].
		] timeToRun.

	"Measure time to serially reset."
	timeToSerialResets := [
		semaphores do: [ :each | [repository reset] ensure: [each signal] ].
		semaphores do: [ :each | each waitTimeoutSeconds: 1 ].
		] timeToRun.
	
	"Concurrent resets should be visibly faster since basicReset is executed only once (ideally)."
	([timeToSerialResets. timeToConcurrentResets]) inspect.
	self assert: timeToSerialResets asMilliSeconds > timeToConcurrentResets asMilliSeconds.