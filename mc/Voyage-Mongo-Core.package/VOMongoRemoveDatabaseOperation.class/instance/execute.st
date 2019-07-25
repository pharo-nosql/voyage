execution
execute
	self writeDatabaseWith: [ :db | db drop ].
	repository reset