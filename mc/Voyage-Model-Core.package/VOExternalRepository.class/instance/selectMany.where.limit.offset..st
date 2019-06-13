persistence
selectMany: aClass where: aDictionary limit: limit offset: offset 
	^ self 
		selectMany: aClass 
		where: aDictionary 
		order: nil 
		limit: limit 
		offset: offset 