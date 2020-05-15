private
objectWithClass: objectClass andId: objectId

	^ (self cacheFor: objectClass) 
		at: objectId
		ifAbsent: [ self selectOne: objectClass id: objectId ]