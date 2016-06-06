tests
test003PrimaryStepsDownOnSave
	"Test save after stepping down the primary node. Note save operation is implemented directly with a Mongo wired protocol"

	self testPrimaryStepsDownOn: [ repository save: VOTestCat new ]
