private persistence
futureInsert: aFuture
	| newId newVersion |

	newVersion := self versionGenerator newVersion.
	newId := (self collectionAt: aFuture realObject class) 
		add: (aFuture serialized
			at: VOUnQLiteJSONSerializer fieldVersion put: newVersion;
			yourself). 
	(self cacheAt: aFuture realObject class)
		cacheObject: aFuture realObject 
		id: newId
		version: newVersion