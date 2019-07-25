execution
execute
	^ self readDatabaseWith: [ :db |
		(repository collectionAt: queryClass inDatabase: db) sizeForQuery: (where ifNil: [ { } ]) asMongoQuery ]