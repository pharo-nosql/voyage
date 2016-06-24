tests
testRemove
	"Test remove after stepping down the primary node."

	| cat |
	cat := VOTestCat new.
	repository save: cat.
	
	self testOn: [ 
		repository remove: cat.
		
		cat := VOTestCat new.
		repository save: cat.
		]
