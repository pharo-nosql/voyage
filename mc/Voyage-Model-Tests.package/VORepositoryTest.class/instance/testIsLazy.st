tests
testIsLazy
	| pilot retrievedPilot |
	pilot := VOTestPilot new
		name: 'Esteban';
		pet: (VOTestDog new name: 'Doggie');
		lazyPet: (VOTestDog new name: 'LazyDoggie').
	self repository save: pilot.
	self repository flushCache.
	self waitForWriteOperation.

	retrievedPilot := self repository selectOne: VOTestPilot where: [ :each | each name = 'Esteban' ].
	self assert: retrievedPilot lazyPet name equals: 'LazyDoggie'.
