accessing
at: anOID put: anObject 
	self compactIfNeeded.
	self mutex critical: [ 
		self basicAt: anOID put: anObject ].