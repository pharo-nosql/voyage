tests
testAllRootsFromADogChain
	"The dog has a one-to-one relation to the owner."
	
	| aDog anotherDog yetAnotherDog results |
	aDog := VOTestDog new name: 'cometa'; yourself.
	anotherDog := VOTestDog new name: 'eli'; yourself.
	yetAnotherDog := VOTestDog new name: 'pepe'; yourself.

	"create the chain of dogs"
	anotherDog owner: aDog.
	yetAnotherDog owner: anotherDog.

	results := repository allRootsFrom: yetAnotherDog.
	
	self assert: results asBag equals: {aDog. anotherDog. yetAnotherDog} asBag.