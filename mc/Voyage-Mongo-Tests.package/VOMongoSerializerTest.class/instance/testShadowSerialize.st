tests
testShadowSerialize
	" test the serialization of the VOMongoShadowDescription"
	| pilot serialized |
	pilot := VOTestPilot new.
	pilot keywords add: 'Smalltalk'.
	pilot keywords add: 'Seaside'.
	serialized := self serializer serialize: pilot.
	self assert: ((serialized at: 'keywords_downcase') includes: 'seaside').
	self assert: ((serialized at: 'keywords_downcase') includes: 'smalltalk').
	self deny: ((serialized at: 'keywords') includes: 'seaside').
	self deny: ((serialized at: 'keywords') includes: 'smalltalk').