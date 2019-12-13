private - visiting
visitMongoCommandError: aMongoCommandError

"	(aMongoCommandError isNotMaster or: [ aMongoCommandError isNotMasterAndSlaveOkIsFalse ])
		ifTrue: [ self smallWait? ]."

	aMongoCommandError isInsertionError ifTrue: [
		aMongoCommandError resignalAs: (VOMongoInsertError new
														code: aMongoCommandError code).
	].

	^ self retryOrResignal: aMongoCommandError