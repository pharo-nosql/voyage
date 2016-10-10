tests
testSaveWithSubclassesAndRelations
	| mozart |
	mozart := VOTestPilot new
		name: 'Mozart';
		pet: (VOTestDog new name: 'Medor').
	self repository save: mozart.
	self waitForWriteOperation.

	"Make sure we got a dog back"
	self assert: (self repository selectAll: VOTestPilot) anyOne pet bark equals: 'Wouf!'.