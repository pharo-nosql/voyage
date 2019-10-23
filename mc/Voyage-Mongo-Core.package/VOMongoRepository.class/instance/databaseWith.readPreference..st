accessing
databaseWith: aBlock readPreference: aMongoReadPreference
	^ sdamClient
		mongoDo: [ :mongo |
			| db |
			db := mongo databaseNamed: self databaseName. 
			(self username isNotNil and: [ self username notEmpty ]) ifTrue: [ 
				db username: self username password: self password ].
			aBlock value: db ]
		readPreference: aMongoReadPreference