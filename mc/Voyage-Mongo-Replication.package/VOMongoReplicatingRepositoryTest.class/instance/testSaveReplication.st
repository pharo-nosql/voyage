tests
testSaveReplication
	self repository save: VOTestPilot new.
	self waitForWriteOperation.

	self assert: (repository count: VOTestPilot) equals: 1.
	self assert: (replicationRepository count: VOTestPilot) equals: 1.