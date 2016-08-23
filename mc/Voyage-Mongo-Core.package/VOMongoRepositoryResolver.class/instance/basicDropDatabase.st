private persistence
basicDropDatabase
	self writingPool withDatabase:  [ :db | db drop ].