accessing
cacheObject: anObject id: anOID version: aVersion

	self compactIfNeeded.
	self mutex critical: [ 
		self basicCacheObject: anObject id: anOID version: aVersion ].
