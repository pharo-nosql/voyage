tests
testIsLazy
	| pilot retrievedPilot |
	pilot := VOTestPilot new
		name: 'Esteban';
		pet: (VOTestDog new name: 'Doggie');
		lazyPet: (VOTestDog new name: 'LazyDoggie').
	self repository save: pilot.
	self repository flushCache.
	
	retrievedPilot := self repository selectOne: VOTestPilot where: [ :each | (each at: 'name') = 'Esteban' ].
	"self assert: (retrievedPilot instVarNamed: 'lazyPet') class equals: VOLazyProxy."
	self assert: retrievedPilot lazyPet name equals: 'LazyDoggie'.