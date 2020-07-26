execution
execute
	self repository databaseWritingDo: [ :db | db drop ].
	repository reset