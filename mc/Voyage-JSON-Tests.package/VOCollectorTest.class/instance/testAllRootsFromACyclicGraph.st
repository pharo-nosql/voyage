tests
testAllRootsFromACyclicGraph
	"The dog has a one-to-one relation to the owner (a pilot), and the pilot has a one-to-many relation to pets (the dog)."
	
	| pilot results dog |
	dog := VOTestDog new name: 'cometa'; yourself.
	pilot := 
		VOTestPilot new 
			name: 'foo'; 
			pastPets: {dog};
			yourself.
	dog owner: pilot.	"Well, pilot is not an owner... but this way the cycle is created."

	results := VOCollector allRootsFrom: dog in: repository.
	
	self assert: results asBag equals: {pilot. dog} asBag.