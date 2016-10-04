tests
testSaveEnsuringCurrent
	repository ensuringCurrentOnSave: true.
		
	repository wireProtocolEnabled: true.
	self assertSaveRaisesError.
	
	repository wireProtocolEnabled: false.
	self assertSaveRaisesError.