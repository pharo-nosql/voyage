tests
testKeyAtValue
	| cache object |
	
	cache := VOCache new.
	object := Object new.

	cache at: 42 put: object.
	cache at: 42 putVersion: 0.
	
	self assert: (cache keyAtValue: object) = 42.
	
	object := nil.
	Smalltalk garbageCollect.
	
	self assert: (cache at: 42 ifAbsent: [ nil ]) isNil.
	cache performCompact.
	self deny: ((cache instVarNamed: 'reversedObjects') values includes:42)
