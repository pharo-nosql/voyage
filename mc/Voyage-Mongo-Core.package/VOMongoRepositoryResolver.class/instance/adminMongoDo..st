private replication
adminMongoDo: aBlockClosure
	"Iterate ad-infinitum over admin mongos"

	self flag: #todo. "too much tolarance"
	
	[ adminMongoByUrl valuesDo: [ :each |
		each isAvailable ifTrue: [ 
			[ ^ aBlockClosure value: each ]
				on: NetworkError 
				do: [:error | 
					"Unavailable member => skip"
					self debugLog: error ]
		]].

		self debugLog: 'no available member; restarting loop'.
		"Wait a bit before restarting loop"
		3 seconds wait. 
	
	true ] whileTrue 