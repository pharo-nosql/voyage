execution
execute 
	| newVersion objectClass |

	objectClass := object class.
	newVersion := repository versionGenerator newVersion.
	(repository collectionAt: objectClass) 
		at: id 
		putDocument: (serialized
			at: VoEJDBJSONSerializer fieldVersion put: newVersion;
			yourself). 
	(repository cacheFor: objectClass)
		cacheObject: object 
		id: id
		version: newVersion