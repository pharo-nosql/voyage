as yet unclassified
readOrCreateSequence
	^ loggingRepository databaseWritingDo: [ :mongo | 
		mongo command: { 
			'findAndModify' -> self sequenceCollectionName.
			'query' -> { 'name' -> self loggingFieldName } asDictionary.
			'update' -> { 
				'$inc' -> { 
					'number' -> 1 
				} asDictionary.
			} asDictionary.
			'upsert' -> true
		 } asOrderedDictionary  ]