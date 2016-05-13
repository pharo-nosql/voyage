persistence
selectMany: aClass where: aDictionary limit: limit offset: offset
	^ self
		readingResolverDo: [ :resolver | 
			resolver
				selectMany: aClass
				where: aDictionary
				limit: limit
				offset: offset ]