persistence
update: anObject serialized: jsonDictionary withId: aOID resolver: resolver

	^ resolver repository isUpdateIfCurrent
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