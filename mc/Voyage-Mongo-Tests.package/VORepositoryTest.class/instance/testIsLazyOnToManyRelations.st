tests
testIsLazyOnToManyRelations
	| pilot pilots retrievedPilot |
	pilot := VOTestPilot new
		name: 'Esteban';
		pastPets: (Array with: (VOTestDog new name: 'Doggie') with: (VOTestDog new name: 'Kittie')).
	self repository save: pilot.
	self repository cache flush.
	
	retrievedPilot := self repository selectOne: VOTestPilot where: { 'name' -> 'Esteban' } asDictionary.
	self assert: retrievedPilot pastPets size equals: 2.