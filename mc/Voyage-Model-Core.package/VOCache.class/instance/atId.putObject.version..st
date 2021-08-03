accessing
atId: anOID putObject: anObject version: aVersion 
	self compactIfNeeded.
	self mutex critical: [ 
		objects at: anOID put: anObject.
		reversedObjects at: anObject put: anOID.
		versions at: anOID put: aVersion].