tests
testEnabledInRepositoryWithLazySynchronize

	repository
		ensuringCurrentReferencesOnQueries: true;
		lazySynchronize: true.
	
	self setUpDogWithOutdatedReferenceOf: VOTestDog.

	self assert: dog owner class equals: VOSerializedLazyProxy.
	self assert: dog owner name equals: 'bar'.
	self assert: dog owner class equals: VOTestOwner.
