persistence
dropDatabase
	self execute: [ self basicDropDatabase ].
	self reset.