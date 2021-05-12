tests
testSaveReplicationSameId
	| pilot pilotCopy |
	self repository save: VOTestPilot new.
	self waitForWriteOperation.

	self assert: (repository count: VOTestPilot) equals: 1.
	self assert: (replicationRepository count: VOTestPilot) equals: 1.
	
	pilot := (repository selectAll: VOTestPilot) anyOne.
	pilotCopy := (replicationRepository selectAll: VOTestPilot) anyOne.

	self 
		assert: (repository idOf: pilot)
		equals: (replicationRepository idOf: pilotCopy)   