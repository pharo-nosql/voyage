updating
executeSearching: searchDictionary
	self repository
		collectionAt: object class
		writingDo: [ :collection | 
			| writeResult |
			writeResult := collection
				commandUpdate: searchDictionary
				with: serialized.
			(writeResult at: 'n') isZero
				ifTrue: [ VOMongoNotCurrentError signal ] ]