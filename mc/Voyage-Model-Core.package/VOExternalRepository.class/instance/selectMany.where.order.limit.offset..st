persistence
selectMany: aClass where: aDictionary order: orderDictionary limit: limit offset: offset 
	^ self selectManyOperation
		queryClass: aClass;
		where: aDictionary;
		sortBlock: orderDictionary;
		limit: limit;
		offset: offset;
		execute