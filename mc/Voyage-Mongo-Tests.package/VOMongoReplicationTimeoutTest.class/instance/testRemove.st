tests
testRemove
	| cat |
	cat := VOTestCat new.
	repository save: cat.
	
	self testOn: [ repository remove: cat ]