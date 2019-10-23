tests
testSaveEnsuringCurrent
	repository ensuringCurrentOnSave: true.
		
	self assertSaveRaisesError.