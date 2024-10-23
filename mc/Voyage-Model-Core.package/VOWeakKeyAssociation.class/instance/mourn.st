finalization
mourn 

	self container reversedDictionary 
		removeKey: self value
		ifAbsent: [ ].
	super mourn