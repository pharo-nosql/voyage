tests
testUpdate
	"Test update after stepping down the primary node."

	| cat |
	cat := VOTestCat new.
	repository save: cat.
	
	self testOn: [ 
		cat name: 'charly', UUID new asString36.
		repository save: cat ]
