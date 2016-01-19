tests
testEmbededBasicCollectionSerialize
	| serialized  object |
	
	object := #(A B C)->#(1 2 3).
	serialized := self serializer serialize: object.
	self assert: (serialized includesKey: VOMongoSerializer fieldType).
	self assert: (serialized at: VOMongoSerializer fieldType) = #Association.

	self assert: (serialized at: 'key') = #(A B C).
	self assert: (serialized at: 'value') = #(1 2 3).