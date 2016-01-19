tests
testEmbededBasicCollectionMaterialization
	| serialized  object |
	
	serialized := {
		VOMongoSerializer fieldType->#Association.
		'key'->#(A B C).
		'value'->#(1 2 3). 
	} asDictionary.
	object := self materializer materialize: Association basicNew fromJSON: serialized.
	
	self assert: object key = #(A B C) asOrderedCollection.
	self assert: object value = #(1 2 3) asOrderedCollection.
