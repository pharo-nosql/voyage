private replication
withAvailableAdminMongo: aBlockClosure
	"Value aBlockClosure in any of the known mongo instances."

	| timeout |
	timeout := DateAndTime now + 2 second.
	self debugLog: 'searching for an available mongo'.

	[ DateAndTime now < timeout ] whileTrue: [ 
		adminMongoByUrl valuesDo: [ :each |
			each isAvailable ifTrue: [ 
				[ ^ aBlockClosure value: each ]
					on: NetworkError 
					do: [:error | self debugLog: each asString, '->', error asString ] 
					"Unavailable member => skip" 
		]]].

	self debugLog: 'no available mongo'.
	^ VOMongoError signal