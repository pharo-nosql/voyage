execution
execute
	^ self repository
		collectionAt: queryClass
		readingDo: [ :collection |
			collection sizeForQuery: (where ifNil: [ {} ]) asMongoQuery ]