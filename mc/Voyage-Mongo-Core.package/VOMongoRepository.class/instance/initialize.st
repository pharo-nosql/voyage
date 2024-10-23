initialization
initialize

	super initialize.
	
	self registerForFinalization.
	
	insertConcerns := SmallDictionary new.
	removeConcerns := SmallDictionary new.
	updateConcerns := SmallDictionary new.