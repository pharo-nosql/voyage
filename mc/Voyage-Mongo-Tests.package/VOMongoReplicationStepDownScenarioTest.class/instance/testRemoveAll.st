tests
testRemoveAll
	"Test removeAll after stepping down the primary node."

	self
		setUpWith: [ 
			| cat |
			cat := VOTestCat new.
			repository save: cat ]
		testOn: [ repository removeAll: VOTestCat ]