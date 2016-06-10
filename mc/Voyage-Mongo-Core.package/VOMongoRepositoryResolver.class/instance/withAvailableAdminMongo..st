private replication
withAvailableAdminMongo: aBlockClosure
	"Value aBlockClosure in any of the known mongo instances."

	15 timesRepeat: [ 
		adminMongoByUrl valuesDo: [ :each |
			each isAvailable ifTrue: [ 
				[ ^ aBlockClosure value: each ]
					on: NetworkError 
					do: [:error | self debugLog: each asString, '->', error asString ] "Unavailable member => skip" 
			] ifFalse: [ self debugLog: each asString, '->', 'not available' ] ].

		self debugLog: 'no available primary member; restarting loop'.
		"Wait a bit before restarting loop"
		1 second wait. 
	].

	self debugLog: 'no available primary member; stopping loop'.
	^ VOMongoError signal