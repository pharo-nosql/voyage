tests
test004PrimaryStepsDownOnCount
	"Test count after stepping down the primary node. Note count operation is implemented with a Mongo>>command:"

	self testPrimaryStepsDownOn: [ repository count: VOTestCat ]