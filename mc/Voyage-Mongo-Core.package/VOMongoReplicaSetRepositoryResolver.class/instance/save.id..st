persistence
save: anObject id: anId
	^ self writingResolverDo: [ :resolver | resolver save: anObject id: anId ]