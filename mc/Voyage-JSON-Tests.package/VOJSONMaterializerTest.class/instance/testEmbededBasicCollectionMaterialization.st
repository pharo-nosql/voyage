tests
testEmbededBasicCollectionMaterialization
	| serialized  object |
	
	serialized := {
		VOJSONSerializer fieldType->#Association.
		'key'->#(A B C).
		'value'->#(1 2 3). 
	} asDictionary.
	object := self materializer materialize: Association basicNew fromJSON: serialized.
	
	self assert: object key asArray equals: #(A B C).
	self assert: object value asArray equals: #(1 2 3)
