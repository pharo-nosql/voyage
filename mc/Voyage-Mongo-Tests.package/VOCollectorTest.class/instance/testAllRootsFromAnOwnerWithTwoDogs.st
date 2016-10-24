tests
testAllRootsFromAnOwnerWithTwoDogs
	"Note the owner hasn't a one-to-many relation to pets"
	
	| owner results aDog anotherDog |
	aDog := VOTestDog new name: 'cometa'; yourself.
	anotherDog := VOTestDog new name: 'eli'; yourself.
	owner := 
		VOTestOwner new 
			name: 'foo'; 
			addPet: aDog;
			addPet: anotherDog;
			yourself.

	results := VOCollector allRootsFrom: owner in: repository.
	
	self assert: results asBag equals: {owner} asBag.