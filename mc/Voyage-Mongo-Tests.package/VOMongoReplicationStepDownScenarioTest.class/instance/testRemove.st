tests
testRemove
	"Test remove after stepping down the primary node."

	| cat |
	self
		setUpWith: [
			cat := VOTestCat new.
			repository save: cat ]
		testOn: [ repository remove: cat ]