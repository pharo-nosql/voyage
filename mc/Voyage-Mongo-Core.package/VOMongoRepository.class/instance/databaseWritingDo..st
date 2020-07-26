accessing
databaseWritingDo: aBlock
	^ sdamClient
		primaryMongoDo: [ :mongo | aBlock value: (self mongoDatabaseFrom: mongo) ]