tests
testRemoveReplication
	| pilot |
	self repository save: VOTestPilot new.
	self waitForWriteOperation.

	self assert: (repository count: VOTestPilot) equals: 1.
	self assert: (replicationRepository count: VOTestPilot) equals: 1.
	
	pilot := (repository selectAll: VOTestPilot) anyOne.
	repository remove: pilot.
	self waitForWriteOperation.
	
	self assert: (repository count: VOTestPilot) equals: 0.
	self assert: (replicationRepository count: VOTestPilot) equals: 0.
