accessing
collectionAt: queryClass do: aBlock readPreference: aMongoReadPreference 
	^ self
		databaseWith: [ :db | 
			aBlock value: (self collectionAt: queryClass inDatabase: db) ]
		readPreference: aMongoReadPreference