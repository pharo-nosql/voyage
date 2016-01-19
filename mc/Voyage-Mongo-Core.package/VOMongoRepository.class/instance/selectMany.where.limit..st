persistence
selectMany: aClass where: aDictionary limit: limit 
	^self selectMany: aClass where: aDictionary limit: limit offset: 0.