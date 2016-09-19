private persistence
futureUpdate: aFuture ensuringCurrent: aBoolean
	self 
		futureWithNewVersion: aFuture 
		do: [ :aOID :anObject :updateDictionary |
			"Ensure oid"
			updateDictionary at: '_id' put: aOID.

			aBoolean
				ifTrue: [ self basicFireAndCheckUpdate: anObject serialized: updateDictionary withId: aOID ]
				ifFalse: [ self basicFireAndForgetUpdate: anObject serialized: updateDictionary withId: aOID ] ]
