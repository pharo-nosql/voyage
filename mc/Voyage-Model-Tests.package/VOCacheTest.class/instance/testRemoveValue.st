tests
testRemoveValue
	| cache object |
	
	cache := VOCache new.
	object := Object new.

	cache at: 42 put: object.
	cache at: 42 putVersion: 0.
	
	self assert: (cache keyAtValue: object) = 42.
	
	cache removeValue: object.

	self assert: (cache at: 42 ifAbsent: [ nil ]) isNil.

	self assert: (cache instVarNamed: 'objects') isEmpty	.
	self assert: (cache instVarNamed: 'reversedObjects') isEmpty.
	self assert: (cache instVarNamed: 'versions') isEmpty
