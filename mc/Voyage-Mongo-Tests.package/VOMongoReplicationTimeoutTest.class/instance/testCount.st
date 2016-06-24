tests
testCount
	repository save: VOTestCat new.
	
	self testOn: [ repository count: VOTestCat ]