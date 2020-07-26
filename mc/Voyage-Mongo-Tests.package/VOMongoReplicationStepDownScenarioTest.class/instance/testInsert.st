tests
testInsert
	"Test insert after stepping down the primary node."

	self testOn: [ repository save: VOTestCat new ]
