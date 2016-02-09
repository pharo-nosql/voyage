tests
testBasicSerialize
	| serialized |
	
	serialized := self serializer serialize: 1@2.
	self assert: serialized size equals: 1.
	self assert: (serialized first serialized includesKey: VOMongoSerializer fieldType).
	self assert: (serialized first serialized at: VOMongoSerializer fieldType) equals: #Point.	
	self assert: (serialized first serialized at: 'x') equals: 1.
	self assert: (serialized first serialized at: 'y') equals: 2.	
