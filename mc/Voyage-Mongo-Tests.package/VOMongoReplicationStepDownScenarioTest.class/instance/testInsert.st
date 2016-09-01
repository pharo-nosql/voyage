tests
testInsert
	"Test insert after stepping down the primary node. Note save operation is implemented directly with a Mongo wired protocol"

	self testOn: [ repository save: VOTestCat new ]
