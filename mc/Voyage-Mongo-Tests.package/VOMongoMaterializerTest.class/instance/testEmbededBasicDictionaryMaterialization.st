tests
testEmbededBasicDictionaryMaterialization
	| serialized  object |
	
	serialized := {
		VOMongoSerializer fieldType->#Association.
		'key'->'key'.
		'value'->{'a'->1. 'b'->2. 'c'->3. } asDictionary. 
	} asDictionary.
	object := self materializer materialize: Association basicNew fromJSON: serialized.
	
	self assert: object key = 'key'.
	self assert: object value class = Dictionary.
	self assert: object value = { 'a'->1. 'b'->2. 'c'->3. } asDictionary.
