private persistence
futureUpdate: aFuture updateIfCurrent: isUpdateIfCurrent
	self 
		futureWithNewVersion: aFuture 
		do: [ :aOID :anObject :updateDictionary |
			"Ensure oid"
			updateDictionary at: '_id' put: aOID.

			isUpdateIfCurrent
				ifTrue: [ self basicFireAndCheckUpdate: anObject serialized: updateDictionary withId: aOID ]
				ifFalse: [ self basicFireAndForgetUpdate: anObject serialized: updateDictionary withId: aOID ] ]
