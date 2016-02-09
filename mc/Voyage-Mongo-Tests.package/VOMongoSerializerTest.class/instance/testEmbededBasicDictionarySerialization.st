tests
testEmbededBasicDictionarySerialization
	| serialized  object |
	
	object := 'a'->{#a->1. #b->2. #c->3} asDictionary.
	serialized := self serializer serialize: object.

	self assert: serialized size equals: 1.	
	self assert: (serialized first serialized includesKey: VOMongoSerializer fieldType).
	self assert: (serialized first serialized at: VOMongoSerializer fieldType) equals: #Association.
	self assert: (serialized first serialized at: 'key') equals: 'a'.
	self assert: (serialized first serialized at: 'value') equals: {#a->1. #b->2. #c->3} asDictionary.