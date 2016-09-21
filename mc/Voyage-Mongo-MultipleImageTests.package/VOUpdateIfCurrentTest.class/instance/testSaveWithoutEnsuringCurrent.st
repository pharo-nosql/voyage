tests
testSaveWithoutEnsuringCurrent
	repository ensuringCurrentOnSave: false.
	
	repository wireProtocolEnabled: true.
	self assertSaveWorksFine.
	
	repository wireProtocolEnabled: false.
	self assertSaveWorksFine.