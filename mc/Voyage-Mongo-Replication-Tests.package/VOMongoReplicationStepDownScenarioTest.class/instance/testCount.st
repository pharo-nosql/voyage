tests
testCount
	"Test count after stepping down the primary node. Note count operation is implemented with a Mongo>>command:"

	self testOn: [ repository count: VOTestCat ]