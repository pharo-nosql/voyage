persistence
selectMany: aClass where: aDictionary limit: aLimit
	^ self selectMany: aClass where: aDictionary limit: aLimit offset: 0