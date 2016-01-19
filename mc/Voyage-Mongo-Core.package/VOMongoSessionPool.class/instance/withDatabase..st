accessing
withDatabase: aBlock 
	"I process block with database instead a session, this is useful for fast access, since you regularly will be using a database and not a plain session. 
	I also do some minor error handling by reseting the connection if an error happens (to ensure it's clean)"
	| session db |
	session := self obtainSession.
	db := session databaseNamed: self database. 
	(self username isNil not) ifTrue: [ 
		"set the username/password if required"
		db username: self username password: self password.
	].
	[ [ ^aBlock value: db ]
	  on: Error do: [ :e | 
		session close; open. 
		e resignalAs: VOMongoConnectionError new ] ]
	ensure: [self returnToPool: session]