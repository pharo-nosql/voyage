tests
testSaveEnsuringCurrent
	self repository save: VOTestPilot new withOptions: #( ensureCurrent ).
	self waitForWriteOperation.

	self assert: (self repository count: VOTestPilot) equals: 1.