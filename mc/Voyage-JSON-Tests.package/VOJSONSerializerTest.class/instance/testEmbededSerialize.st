tests
testEmbededSerialize
	| serialized point |
	
	serialized := self serializer serialize: (1@2 corner: 3@4).
	
	self assert: serialized size equals: 1.	
	self assert: (serialized first serialized includesKey: VOJSONSerializer fieldType).
	self assert: (serialized first serialized at: VOJSONSerializer fieldType) = #Rectangle.	
	self assert: (serialized first serialized includesKey: 'origin').
	
	point := serialized first serialized at: 'origin'.
	self assert: (point at: VOJSONSerializer fieldType) = #Point.
	self assert: (point at: 'x') = 1.
	self assert: (point at: 'y') = 2.	
	
	self assert: (serialized first serialized includesKey: 'corner').
	point := serialized first serialized at: 'corner'.
	self assert: (point at: VOJSONSerializer fieldType) = #Point.
	self assert: (point at: 'x') = 3.
	self assert: (point at: 'y') = 4.