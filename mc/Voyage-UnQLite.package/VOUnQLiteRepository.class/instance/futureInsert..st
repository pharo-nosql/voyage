private persistence
futureInsert: aFuture
	| newId newVersion |
	newVersion := self versionGenerator newVersion.
	newId := (self collectionAt: aFuture realObject class) 
		add: (aFuture serialized
			at: VOJSONSerializer fieldVersion put: newVersion;
			yourself). 
	self cacheAt: newId put: aFuture realObject.
	self cacheAt: aFuture futureId putVersion: newVersion