accessing
cacheObject: anObject id: anId version: aVersion

	self at: anId put: anObject.
	self at: anId putVersion: aVersion 