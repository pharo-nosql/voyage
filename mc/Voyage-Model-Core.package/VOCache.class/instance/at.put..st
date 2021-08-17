accessing
at: anOID put: anObject 
	self compactIfNeeded.
	self basicAt: anOID put: anObject