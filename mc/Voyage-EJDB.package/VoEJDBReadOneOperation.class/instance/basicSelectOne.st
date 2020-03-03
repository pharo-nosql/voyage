persistence
basicSelectOne

	^ (repository collectionAt: queryClass) 
		detectWithId: where asEJDBQuery
		ifFound: [ :documentAssoc |
			documentAssoc value
				at: VoEJDBJSONSerializer fieldId put: documentAssoc key;
				yourself ]
		ifNone: [ nil ]