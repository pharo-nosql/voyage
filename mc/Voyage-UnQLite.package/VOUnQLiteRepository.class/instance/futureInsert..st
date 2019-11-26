private persistence
futureInsert: aFuture
	| newId newVersion objectClass |

	objectClass := aFuture realObject class.
	newVersion := self versionGenerator newVersion.
	newId := (self collectionAt: objectClass) 
		add: (aFuture serialized
			at: VOUnQLiteJSONSerializer fieldVersion put: newVersion;
			yourself). 
	(self cacheAt: objectClass)
		cacheObject: aFuture realObject 
		id: newId
		version: newVersion