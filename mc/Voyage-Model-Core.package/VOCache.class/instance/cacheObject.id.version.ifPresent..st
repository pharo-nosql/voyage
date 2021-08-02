accessing
cacheObject: anObject id: anOID version: aVersion ifPresent: aBlock

	self compactIfNeeded.
	self mutex critical: [ 
		objects at: anOID ifPresent: aBlock.
		objects at: anOID put: anObject.
		reversedObjects at: anObject put: anOID.
		versions at: anOID put: aVersion].
