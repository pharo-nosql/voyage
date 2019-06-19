execution
execute
	self pool withDatabase:  [ :db | db drop ].
	repository reset