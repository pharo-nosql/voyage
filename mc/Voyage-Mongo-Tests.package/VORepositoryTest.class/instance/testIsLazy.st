tests
testIsLazy
	| pilot pilots retrievedPilot |
	pilot := VOTestPilot new
		name: 'Esteban';
		pet: (VOTestDog new name: 'Doggie');
		lazyPet: (VOTestDog new name: 'LazyDoggie').
	self repository save: pilot.
	self repository cache flush.
	
	retrievedPilot := self repository selectOne: VOTestPilot where: { 'name' -> 'Esteban' } asDictionary.
	"self assert: (retrievedPilot instVarNamed: 'lazyPet') class equals: VOLazyProxy."
	self assert: retrievedPilot lazyPet name equals: 'LazyDoggie'.