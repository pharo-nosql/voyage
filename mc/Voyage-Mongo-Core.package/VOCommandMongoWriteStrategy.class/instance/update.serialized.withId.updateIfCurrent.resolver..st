persistence
update: anObject serialized: jsonDictionary withId: aOID updateIfCurrent: aBoolean resolver: resolver

	^ aBoolean
		ifTrue: [ 
			resolver
				commandFireAndCheckUpdate: anObject 
				serialized: jsonDictionary 
				withId: aOID ]
		ifFalse: [ 
			resolver
				commandFireAndForgetUpdate: anObject
				serialized: jsonDictionary
				withId: aOID ]