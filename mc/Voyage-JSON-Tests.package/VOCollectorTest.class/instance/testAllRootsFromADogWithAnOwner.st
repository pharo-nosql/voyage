tests
testAllRootsFromADogWithAnOwner
	"Note that dog has a one-to-one relation to the owner."

	| dog owner results |
	dog := VOTestDog new name: 'cometa'; yourself.
	owner := 
		VOTestOwner new 
			name: 'foo'; 
			addPet: dog;
			yourself.

	results := repository allRootsFrom: dog.
	
	self assert: results asBag equals: {dog. owner} asBag.