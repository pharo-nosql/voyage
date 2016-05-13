persistence
selectMany: aClass where: aDictionary
	^ self readingResolverDo: [ :resolver | resolver selectMany: aClass where: aDictionary ]