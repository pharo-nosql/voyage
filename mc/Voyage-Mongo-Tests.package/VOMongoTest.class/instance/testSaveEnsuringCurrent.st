tests
testSaveEnsuringCurrent
	self repository saveEnsuringCurrent: VOTestPilot new.
	self waitForWriteOperation.

	self assert: (self repository count: VOTestPilot) equals: 1.