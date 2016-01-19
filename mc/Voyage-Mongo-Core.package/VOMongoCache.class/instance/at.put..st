accessing
at: anOID put: anObject 
	self compactIfNeeded.
	self mutex critical: [ 
		objects at: anOID put: anObject.
		reversedObjects at: anObject put: anOID ].