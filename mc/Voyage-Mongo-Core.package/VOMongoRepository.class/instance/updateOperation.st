operations
updateOperation
	^ self updateOperationClass new
		repository: self;
		ensureCurrent: ensuringCurrentOnSave;
		yourself 