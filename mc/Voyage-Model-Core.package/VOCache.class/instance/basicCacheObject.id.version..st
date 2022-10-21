accessing
basicCacheObject: anObject id: anOID version: aVersion

	objects at: anOID put: anObject.
	reversedObjects at: anObject put: anOID.
	versions at: anOID put: aVersion