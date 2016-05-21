persistence
count: aClass where: aDictionary
	^ self readingResolverDo: [ :resolver | resolver count: aClass where: aDictionary ]