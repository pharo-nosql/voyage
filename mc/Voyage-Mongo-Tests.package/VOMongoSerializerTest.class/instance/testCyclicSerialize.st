tests
testCyclicSerialize
	| serialized owner |
	
	owner := VOTestOwner new
		name: 'test owner';
		addPet: (VOTestDog new 
			name: 'Rocky';
			yourself);
		addPet: (VOTestCat new 
			name: 'Miau';
			yourself);
		yourself.

	serialized := self serializer serialize: owner.	
	self assert: serialized size equals: 3.
	"First root"
	self assert: (serialized first serialized at: VOMongoSerializer fieldType) equals: #VOTestOwner.
	self assert: (serialized first serialized at: 'pets') size equals: 2.
	self assert: ((serialized first serialized at: 'pets') first at: VOMongoSerializer fieldType) equals: #VOTestDog.
	self assert: ((serialized first serialized at: 'pets') first at: VOMongoSerializer fieldCollection) equals: 'pet'.
	
	"Then children"
	self assert: (serialized second serialized at: VOMongoSerializer fieldType) equals: #VOTestDog.
	self assert: (serialized third serialized at: VOMongoSerializer fieldType) equals: #VOTestCat.	
	