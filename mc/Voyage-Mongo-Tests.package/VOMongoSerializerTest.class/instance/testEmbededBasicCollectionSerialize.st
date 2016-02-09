tests
testEmbededBasicCollectionSerialize
	| serialized  object |
	
	object := #(A B C)->#(1 2 3).
	serialized := self serializer serialize: object.

	self assert: serialized size equals: 1.	
	self assert: (serialized first serialized includesKey: VOMongoSerializer fieldType).
	self assert: (serialized first serialized at: VOMongoSerializer fieldType) equals: #Association.
	self assert: (serialized first serialized at: 'key') equals: #(A B C).
	self assert: (serialized first serialized at: 'value') equals: #(1 2 3).