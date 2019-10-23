execution
execute
	self repository
		collectionAt: queryClass
		writingDo: [ :collection | collection drop ]