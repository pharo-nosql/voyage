tests
testEmbededBasicDictionarySerialization
	| serialized  object |
	
	object := 'a'->{#a->1. #b->2. #c->3} asDictionary.
	serialized := self serializer serialize: object.
	self assert: (serialized includesKey: VOMongoSerializer fieldType).
	self assert: (serialized at: VOMongoSerializer fieldType) = #Association.

	self assert: (serialized at: 'key') = 'a'.
	self assert: (serialized at: 'value') = {#a->1. #b->2. #c->3} asDictionary.