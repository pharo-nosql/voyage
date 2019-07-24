execution
execute
	^ self withDatabase: [ :db |
		(repository collectionAt: queryClass inDatabase: db) sizeForQuery: (where ifNil: [ { } ]) asMongoQuery ]