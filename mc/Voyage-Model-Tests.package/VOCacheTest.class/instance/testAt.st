tests
testAt
	| cache object |
	
	cache := VOCache new.
	object := Object new.
	cache at: 42 put: object.
	
	self assert: (cache at: 42) equals: object.
	self assert: (cache keyAtValue: object) equals: 42.
	
	object := nil.
	3 timesRepeat: [ Smalltalk garbageCollect ].
	
	self assert: (cache at: 42 ifAbsent: [ nil ]) isNil