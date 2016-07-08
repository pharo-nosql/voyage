private persistence
basicRawFireAndForgetUpdate: searchDictionary to: updateDictionary in: collection
	"Perform update (do not check whether it was success)"

	repository useWireProtocolToWrite
		ifTrue: [ self basicRawWireProtocolUpdate: searchDictionary with: updateDictionary in: collection ]
		ifFalse: [ self basicRawCommandUpdate: searchDictionary with: updateDictionary in: collection ]
