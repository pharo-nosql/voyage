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
	self assert: (serialized first serialized at: VOJSONSerializer fieldType) equals: #VOTestOwner.
	self assert: (serialized first serialized at: 'pets') size equals: 2.
	self assert: ((serialized first serialized at: 'pets') first at: VOJSONSerializer fieldType) equals: #VOTestDog.
	self assert: ((serialized first serialized at: 'pets') first at: VOJSONSerializer fieldCollection) equals: 'pet'.
	
	"Then children"
	self assert: (serialized second serialized at: VOJSONSerializer fieldType) equals: #VOTestDog.
	self assert: (serialized third serialized at: VOJSONSerializer fieldType) equals: #VOTestCat.	
	