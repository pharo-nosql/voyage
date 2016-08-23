tests
testRemoveCollection

	| cat |
	self 
		setUpWith: [ 			
			cat := VOTestCat new.
			repository save: cat ]
		testOn: [ 
			repository removeCollection: VOTestCat ]
		acceptableTimeToFail:  self acceptableTimeToFail