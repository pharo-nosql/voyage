persistence
update: anObject serialized: jsonDictionary withId: aOID updateIfCurrent: aBoolean resolver: resolver

	^ aBoolean
		ifTrue: [ 
			resolver 
				wireProtocolFireAndCheckUpdate: anObject 
				serialized: jsonDictionary 
				withId: aOID ]
		ifFalse: [ 
			resolver
				wireProtocolFireAndForgetUpdate: anObject
				serialized: jsonDictionary
				withId: aOID ]