execution
execute 
	| newId newVersion objectClass |

	objectClass := object class.
	newVersion := repository versionGenerator newVersion.
	newId := (repository collectionAt: objectClass) 
		addFromJSONDictionary: (serialized
			at: VoEJDBJSONSerializer fieldVersion put: newVersion;
			yourself). 
	(repository cacheFor: objectClass)
		cacheObject: object 
		id: newId
		version: newVersion