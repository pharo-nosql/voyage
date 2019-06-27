tests
testSaveCircular
	| owner |
	owner := VOTestOwner new
		name: 'test owner';
		addPet: (VOTestDog new 
			name: 'Rocky';
			yourself);
		addPet: (VOTestCat new 
			name: 'Miau';
			yourself);
		yourself.

	self 
		assert: (self repository count: VOTestOwner)
		equals: 0.

	self repository save: owner.
	self waitForWriteOperation.
	
	self 
		assert: (self repository count: VOTestOwner)
		equals: 1.
	self 
		assert: (self repository selectOne: VOTestOwner where: [ :each | each name = 'test owner' ])
		equals: owner.

	self 
		assert: (self repository count: VOTestPet)
		equals: 2.