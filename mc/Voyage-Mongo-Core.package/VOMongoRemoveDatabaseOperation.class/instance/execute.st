execution
execute
	self withDatabase: [ :db | db drop ].
	repository reset