tests
testIsLazyOnToManyRelations
	| pilot pilots retrievedPilot |
	pilot := VOTestPilot new
		name: 'Esteban';
		pastPets: (Array with: (VOTestDog new name: 'Doggie') with: (VOTestDog new name: 'Kittie')).
	self repository save: pilot.
	self repository flushCache.
	
	retrievedPilot := self repository 
		selectOne: VOTestPilot 
		where: [ :each | (each at: 'name') = 'Esteban' ].
	self assert: retrievedPilot pastPets size equals: 2.