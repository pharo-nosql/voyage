tests
testRemoveCollection
	self
		setUpWith: [
			| cat |
			cat := VOTestCat new.
			repository save: cat ]
		testOn: [ repository removeCollection: VOTestCat ]