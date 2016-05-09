persistence
update: anObject serialized: jsonDictionary withId: aOID resolver: resolver

	^ resolver repository isUpdateIfCurrent
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