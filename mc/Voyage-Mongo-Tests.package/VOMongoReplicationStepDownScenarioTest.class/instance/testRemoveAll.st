tests
testRemoveAll
	"Test removeAll after stepping down the primary node."

	| cat |
	cat := VOTestCat new.
	repository save: cat.
	
	self testOn: [ 
		repository removeAll: VOTestCat.
		
		cat := VOTestCat new.
		repository save: cat.
		]
