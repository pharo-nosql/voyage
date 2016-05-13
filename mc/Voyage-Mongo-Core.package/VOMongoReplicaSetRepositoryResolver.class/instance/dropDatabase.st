persistence
dropDatabase
	^ self writingResolverDo: [ :resolver | resolver dropDatabase ]