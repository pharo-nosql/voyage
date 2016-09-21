private persistence
basicRawFireAndCheckUpdate: searchDictionary to: updateDictionary in: collection
	"Perform update and answer whether it was success"

	repository isWireProtocolEnabled
		ifTrue: [ 
			self basicRawWireProtocolUpdate: searchDictionary with: updateDictionary in: collection.
			^ collection database lastError updatedExisting ]
		ifFalse: [ | writeResult |
			writeResult := self basicRawCommandUpdate: searchDictionary with: updateDictionary in: collection.
			^ (writeResult at: 'n') > 0 ]
