tests
testSaveWithSubclassesAndRelations
	| mozart |
	mozart := VOTestPilot new
		name: 'Mozart';
		pet: (VOTestDog new name: 'Medor').
	
	self repository save: mozart.

	"Make sure we got a dog back"
	self assert: (self repository selectAll: VOTestPilot) first pet bark equals: 'Wouf!'.