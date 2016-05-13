persistence
selectMany: aClass where: aDictionary order: orderDictionary limit: limit offset: offset
	^ self
		readingResolverDo: [ :resolver | 
			resolver
				selectMany: aClass
				where: aDictionary
				order: orderDictionary
				limit: limit
				offset: offset ]