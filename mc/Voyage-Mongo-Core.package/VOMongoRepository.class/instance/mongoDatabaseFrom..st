private
mongoDatabaseFrom: mongo
	| db |
	db := mongo databaseNamed: self databaseName.
	(self username isNotNil and: [ self username notEmpty ])
		ifTrue: [ db username: self username password: self password ].
	^ db