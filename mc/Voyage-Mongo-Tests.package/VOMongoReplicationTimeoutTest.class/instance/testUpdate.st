tests
testUpdate
	| cat |
	cat := VOTestCat new.
	repository save: cat.
	cat name: 'charly'.
	
	self testOn: [ repository save: cat ]