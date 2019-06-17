private persistence
basicRawSelectMany: aClass where: aDictionary limit: limit offset: offset
	^ self 
		basicRawSelectMany: aClass 
		where: aDictionary 
		order: nil
		limit: limit 
		offset: offset