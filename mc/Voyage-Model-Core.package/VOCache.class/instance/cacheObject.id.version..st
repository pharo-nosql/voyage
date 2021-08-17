accessing
cacheObject: anObject id: anOID version: aVersion

	self compactIfNeeded.
	self basicCacheObject: anObject id: anOID version: aVersion
