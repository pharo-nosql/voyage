updating
executeSearching: searchDictionary
	self repository
		collectionAt: object class
		writingDo: [ :collection | 
			| writeResult |
			writeResult := collection
				commandUpdate: searchDictionary
				with: serialized
				writeConcern: (self repository updateConcernFor: object class).
			((writeResult at: 'n') isZero and: [ ensureCurrent ]) 
				ifTrue: [ VOMongoNotCurrentError signal ] ]