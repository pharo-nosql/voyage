private persistence
basicSelectMany: aClass where: aDictionary limit: limit offset: offset
	
	^ self 
		basicSelectMany: aClass
		where: aDictionary 
		order: nil
		limit: limit
		offset: offset