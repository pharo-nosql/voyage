execution
execute
	^ self repository readDatabaseWith: [ :db |
		(repository collectionAt: queryClass inDatabase: db) sizeForQuery: (where ifNil: [ { } ]) asMongoQuery ]