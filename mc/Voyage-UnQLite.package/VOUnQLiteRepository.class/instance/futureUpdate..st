private persistence
futureUpdate: aFuture
	| object objectClass newVersion id |
	
	object := aFuture realObject.
	objectClass := object class.

	id := self idOf: object.
	newVersion := self versionGenerator newVersion.
	(self collectionAt: objectClass) 
		at: id 
		put: (aFuture serialized
			at: VOUnQLiteJSONSerializer fieldVersion put: newVersion;
			yourself).
	(self cacheAt: objectClass)
		cacheObject: object 
		id: id 
		version: newVersion  