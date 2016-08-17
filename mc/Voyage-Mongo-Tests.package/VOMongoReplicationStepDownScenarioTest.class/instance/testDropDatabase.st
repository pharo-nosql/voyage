tests
testDropDatabase

	self 
		setUpWith: [ repository save: VOTestCat new ]
		testOn: [ repository dropDatabase ]
		acceptableTimeToFail: self acceptableTimeToFail * 2 "this operation takes longer than others"