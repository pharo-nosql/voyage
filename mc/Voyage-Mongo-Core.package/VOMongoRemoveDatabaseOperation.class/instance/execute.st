execution
execute
	self repository writeDatabaseWith: [ :db | db drop ].
	repository reset