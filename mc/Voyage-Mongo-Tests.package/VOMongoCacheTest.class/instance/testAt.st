tests
testAt
	| cache object |
	
	cache := VOMongoCache new.
	object := Object new.
	cache at: 42 put: object.
	
	self assert: (cache at: 42) = object.
	self assert: (cache keyAtValue: object) = 42.
	
	object := nil.
	Smalltalk garbageCollect.
	
	self assert: (cache at: 42 ifAbsent: [ nil ]) isNil
