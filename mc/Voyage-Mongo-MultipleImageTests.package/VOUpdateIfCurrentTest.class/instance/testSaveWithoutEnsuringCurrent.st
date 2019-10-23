tests
testSaveWithoutEnsuringCurrent
	repository ensuringCurrentOnSave: false.
	
	self assertSaveWorksFine.