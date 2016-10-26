tests
testEnabledInClassWithoutLazySynchronize

	repository
		ensuringCurrentReferencesOnQueries: false;
		lazySynchronize: false.
	
	self setUpDogWithOutdatedReferenceOf: VOTestDogEnsuringCurrentReferencesOnQueries.

	self assert: dog owner class equals: VOTestOwner.
	self assert: dog owner name equals: 'bar'.
	self assert: dog owner class equals: VOTestOwner.
