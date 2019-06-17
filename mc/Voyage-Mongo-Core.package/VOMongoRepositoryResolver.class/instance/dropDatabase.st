persistence
dropDatabase
	self execute: [ self basicDropDatabase ].
	repository reset.