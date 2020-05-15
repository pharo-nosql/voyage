accessing
objectWithClass: objectClass andId: objectId

	^ (self cacheAt: objectClass) 
		at: objectId
		ifAbsent: [ self selectOne: objectClass id: objectId ]