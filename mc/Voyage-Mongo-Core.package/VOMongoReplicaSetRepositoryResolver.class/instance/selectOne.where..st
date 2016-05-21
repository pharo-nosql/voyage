persistence
selectOne: aClass where: aDictionary
	^ self readingResolverDo: [ :resolver | resolver selectOne: aClass where: aDictionary ]