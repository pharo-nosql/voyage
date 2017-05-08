private persistence
basicRawFireAndForgetUpdate: searchDictionary to: updateDictionary in: collection concern: aConcern
	"Perform update (do not check whether it was success)"
	self flag: #todo.
	repository isWireProtocolEnabled
		ifTrue: [ self basicRawWireProtocolUpdate: searchDictionary with: updateDictionary in: collection ]
		ifFalse: [ self basicRawCommandUpdate: searchDictionary with: updateDictionary in: collection ]
