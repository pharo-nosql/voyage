operations
updateOperation
	^ (self newOperation: self updateOperationClass)
		ensureCurrent: ensuringCurrentOnSave;
		yourself 