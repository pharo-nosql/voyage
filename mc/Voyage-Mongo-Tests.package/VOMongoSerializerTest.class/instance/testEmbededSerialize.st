tests
testEmbededSerialize
	| serialized origin corner |
	
	serialized := self serializer serialize: (1@2 corner: 3@4).
	self assert: (serialized includesKey: VOMongoSerializer fieldType).
	self assert: (serialized at: VOMongoSerializer fieldType) = #Rectangle.
	
	self assert: (serialized includesKey: 'origin').
	origin := serialized at: 'origin'.
	self assert: (origin at: VOMongoSerializer fieldType) = #Point.
	self assert: (origin at: 'x') = 1.
	self assert: (origin at: 'y') = 2.	
	
	self assert: (serialized includesKey: 'corner').
	origin := serialized at: 'corner'.
	self assert: (origin at: VOMongoSerializer fieldType) = #Point.
	self assert: (origin at: 'x') = 3.
	self assert: (origin at: 'y') = 4.	