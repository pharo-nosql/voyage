tests
testDropDatabase
	self
		setUpWith: [ repository save: VOTestCat new ]
		testOn: [ repository dropDatabase ]