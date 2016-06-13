private persistence
futureUpdate: aFuture
	| newVersion |
	newVersion := self versionGenerator newVersion.
	(self collectionAt: aFuture realObject class) 
		at: aFuture futureId 
		put: (aFuture serialized
			at: VOJSONSerializer fieldVersion put: newVersion;
			yourself).
	self cacheAt: aFuture futureId putVersion: newVersion			