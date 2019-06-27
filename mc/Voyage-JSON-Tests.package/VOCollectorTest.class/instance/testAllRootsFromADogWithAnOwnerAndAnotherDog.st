tests
testAllRootsFromADogWithAnOwnerAndAnotherDog
	"Note that dog has a one-to-one relation to the owner, BUT the owner hasn't a one-to-many relation to pets."

	| owner results aDog anotherDog |
	aDog := VOTestDog new name: 'cometa'; yourself.
	anotherDog := VOTestCat new name: 'maus'; yourself.
	owner := 
		VOTestOwner new 
			name: 'foo'; 
			addPet: aDog;
			addPet: anotherDog;
			yourself.

	results := repository allRootsFrom: aDog.
	
	self assert: results asBag equals: {aDog. owner} asBag.