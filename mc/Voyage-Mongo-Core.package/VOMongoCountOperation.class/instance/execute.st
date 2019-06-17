execution
execute
	^ self pool withDatabase: [ :db |
		(repository collectionAt: queryClass inDatabase: db) sizeForQuery: (where ifNil: [ { } ]) asMongoQuery ]