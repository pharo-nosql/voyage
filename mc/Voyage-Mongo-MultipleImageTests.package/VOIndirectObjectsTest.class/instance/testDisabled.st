tests
testDisabled

	repository
		ensuringCurrentReferencesOnQueries: false.

	self setUpDogWithOutdatedReferenceOf: VOTestDog.

	self assert: dog owner class equals: VOTestOwner.
	self assert: dog owner name equals: 'foo'.