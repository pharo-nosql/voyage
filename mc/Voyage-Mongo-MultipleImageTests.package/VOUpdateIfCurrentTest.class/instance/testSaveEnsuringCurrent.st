tests
testSaveEnsuringCurrent
	repository ensuringCurrentOnSave: true.
		
	repository useWireProtocolToWrite: true.
	self assertSaveRaisesError.
	
	repository useWireProtocolToWrite: false.
	self assertSaveRaisesError.