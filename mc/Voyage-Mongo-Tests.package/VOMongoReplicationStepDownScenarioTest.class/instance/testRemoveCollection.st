tests
testRemoveCollection

	| cat |
	cat := VOTestCat new.
	repository save: cat.
	
	self testOn: [ 
		repository removeCollection: VOTestCat.
		
		cat := VOTestCat new.
		repository save: cat.
		]
