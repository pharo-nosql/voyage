updating
basicExecute
	serialized at: repository fieldRootId put: id.

	self repository
		collectionAt: object class
		writingDo: [ :collection |
			| currentVersion searchDictionary writeResult |
			currentVersion := repository cacheVersionAt: id.

			searchDictionary := Dictionary new
				at: repository fieldRootId put: id;
				yourself.
			
			ensureCurrent ifTrue: [
				searchDictionary at: repository fieldVersion put: currentVersion ].

			writeResult := collection commandUpdate: searchDictionary with: serialized.

			(writeResult at: 'n') isZero
				ifTrue: [ VOMongoNotCurrentError signal ]
			].
