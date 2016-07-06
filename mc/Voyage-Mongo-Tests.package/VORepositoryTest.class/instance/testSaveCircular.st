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
		
	self repository save: owner.
	
	1 second wait.
	
	self 
		assert: (self repository selectOne: VOTestOwner where: [ :each | each name = 'test owner' ])
		equals: owner.
	self 
		assert: (self repository selectAll: VOTestPet) size
		equals: 2.
		
		