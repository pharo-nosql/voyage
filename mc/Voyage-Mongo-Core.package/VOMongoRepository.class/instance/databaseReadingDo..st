accessing
databaseReadingDo: aBlock
	^ sdamClient
		mongoDo: [ :mongo | aBlock value: (self mongoDatabaseFrom: mongo) ]
		readPreference: self readPreferenceForReadingOperations