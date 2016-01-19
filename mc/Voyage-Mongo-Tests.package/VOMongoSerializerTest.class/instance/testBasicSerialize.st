tests
testBasicSerialize
	| serialized |
	
	serialized := self serializer serialize: 1@2.
	self assert: (serialized includesKey: VOMongoSerializer fieldType).
	self assert: (serialized at: VOMongoSerializer fieldType) = #Point.	
	self assert: (serialized at: 'x') = 1.
	self assert: (serialized at: 'y') = 2.	
