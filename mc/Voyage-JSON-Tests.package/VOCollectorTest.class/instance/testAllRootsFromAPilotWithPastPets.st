tests
testAllRootsFromAPilotWithPastPets
	"The pilot has a one-to-many relation to pastPets"

	| pilot results dog cat |
	dog := VOTestDog new name: 'cometa'; yourself.
	cat := VOTestCat new name: 'maus'; yourself.
	pilot := 
		VOTestPilot new 
			name: 'foo'; 
			pastPets: {dog. cat};
			yourself.

	results := VOCollector allRootsFrom: pilot in: repository.
	
	self assert: results asBag equals: {pilot. dog. cat} asBag.