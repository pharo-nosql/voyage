tests
testDropDatabase
	self 
		testOn: [ repository dropDatabase ]
		acceptableTimeToFail: self acceptableTimeToFail * 2 "this operation takes longer than others"