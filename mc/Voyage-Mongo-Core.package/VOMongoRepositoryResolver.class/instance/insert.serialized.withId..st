private persistence
insert: anObject serialized: jsonDictionary withId: aOID
	| lastError |
	self writingPool withDatabase: [ :db | 
		(self collectionAt: anObject class inDatabase: db) 
			add: (jsonDictionary
				at: '_id' put: aOID;
				yourself).
				
		lastError := db command: {'getLastError'->1} asDictionary.
		(lastError at: 'err') = 'not master' ifTrue: [ 
			"Simulate not master.  Fix!"		
			self debugLog: 'getLastError: ', lastError asString. 
			MongoCommandError signalFor: { 'code' -> 10107. 'errmsg' -> 'not master' } asDictionary ]
				
				
				 ].

	^aOID