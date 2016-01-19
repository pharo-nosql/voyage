private persistence
basicDropDatabase
	self pool withDatabase:  [ :db | db drop ].