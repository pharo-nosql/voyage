tests
testEmbededBasicDictionaryMaterialization
	| serialized  object |
	
	serialized := {
		VOJSONSerializer fieldType->#Association.
		'key'->'key'.
		'value'->{'a'->1. 'b'->2. 'c'->3. } asDictionary. 
	} asDictionary.
	object := self materializer materialize: Association basicNew fromJSON: serialized.
	
	self assert: object key equals: 'key'.
	self assert: object value species equals: Dictionary.
	self assert: object value equals: { 'a'->1. 'b'->2. 'c'->3. } asDictionary.
