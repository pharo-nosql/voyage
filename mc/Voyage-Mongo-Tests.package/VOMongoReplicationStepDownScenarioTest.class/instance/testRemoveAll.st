tests
testRemoveAll
	"Test removeAll after stepping down the primary node."

	| cat |
	self 
		setUpWith: [ 			
			cat := VOTestCat new.
			repository save: cat ]
		testOn: [ 
			repository removeAll: VOTestCat ]
		acceptableTimeToFail:  self acceptableTimeToFail 