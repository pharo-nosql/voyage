persistence
selectMany: aClass where: aDictionary order: orderDictionary limit: limit offset: offset 
	^ self selectMany
		queryClass: aClass;
		where: aDictionary;
		sortBlock: orderDictionary;
		limit: limit;
		offset: offset;
		execute