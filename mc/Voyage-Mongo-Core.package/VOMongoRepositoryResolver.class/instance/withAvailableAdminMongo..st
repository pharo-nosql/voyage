private replication
withAvailableAdminMongo: aBlockClosure
	"Value aBlockClosure in any of the known mongo instances."

	self flag: #todo. "too much tolarance"
	
	[ adminMongoByUrl valuesDo: [ :each |
		each isAvailable ifTrue: [ 
			[ ^ aBlockClosure value: each ]
				on: NetworkError 
				do: [:error | self debugLog: each asString, '->', error asString ] "Unavailable member => skip" 
		]].

		self debugLog: 'no available primary member; restarting loop'.
		"Wait a bit before restarting loop"
		2 seconds wait. 
	
	true ] whileTrue 