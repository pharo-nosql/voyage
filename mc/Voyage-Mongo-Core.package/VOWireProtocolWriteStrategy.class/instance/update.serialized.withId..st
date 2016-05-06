persistence
update: anObject serialized: jsonDictionary withId: aOID

	^ resolver isUpdateIfCurrent
		ifTrue: [ resolver 
			wireProtocolFireAndCheckUpdate: anObject 
			serialized: jsonDictionary 
			withId: aOID ]
		ifFalse: [ resolver
				wireProtocolFireAndForgetUpdate: anObject
				serialized: jsonDictionary
				withId: aOID ]