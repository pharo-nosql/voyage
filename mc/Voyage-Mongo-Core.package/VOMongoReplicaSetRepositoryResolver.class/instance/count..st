persistence
count: aClass 
	^ self readingResolverDo: [ :resolver | resolver count: aClass ]