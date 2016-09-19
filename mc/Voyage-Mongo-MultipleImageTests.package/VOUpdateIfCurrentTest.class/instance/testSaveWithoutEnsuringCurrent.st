tests
testSaveWithoutEnsuringCurrent
	repository ensuringCurrentOnSave: false.
	
	repository useWireProtocolToWrite: true.
	self assertSaveWorksFine.
	
	repository useWireProtocolToWrite: false.
	self assertSaveWorksFine.