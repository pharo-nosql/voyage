persistence
remove: anObject 
	^ self writingResolverDo: [ :resolver | resolver remove: anObject ]