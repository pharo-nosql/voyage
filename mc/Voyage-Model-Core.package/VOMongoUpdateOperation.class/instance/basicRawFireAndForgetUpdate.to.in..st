as yet unclassified
basicRawFireAndForgetUpdate: searchDictionary to: updateDictionary in: collection
	"Perform update (do not check whether it was success)"

	repository isWireProtocolEnabled
		ifTrue: [ self basicRawWireProtocolUpdate: searchDictionary with: updateDictionary in: collection ]
		ifFalse: [ self basicRawCommandUpdate: searchDictionary with: updateDictionary in: collection ]
