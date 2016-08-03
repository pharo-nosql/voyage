persistence
commit: aBlock 
	self flag: #todo. "UnQLite supports transaction, so this should be modified to better 
	handle it, but for now we skip it."
	aBlock value