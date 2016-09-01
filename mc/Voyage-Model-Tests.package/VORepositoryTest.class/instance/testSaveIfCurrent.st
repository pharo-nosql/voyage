tests
testSaveIfCurrent
	self repository saveIfCurrent: VOTestPilot new.
	self waitForWriteOperation.

	self assert: (self repository count: VOTestPilot) equals: 1.