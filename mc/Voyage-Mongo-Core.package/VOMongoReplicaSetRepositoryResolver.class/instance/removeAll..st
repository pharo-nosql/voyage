persistence
removeAll: aClass 
	^ self writingResolverDo: [ :resolver | resolver removeAll: aClass ]