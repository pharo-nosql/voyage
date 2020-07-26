private - visiting
visitMongoLastError: aMongoLastError

"	(aMongoCommandError isNotMaster or: [ aMongoCommandError isNotMasterAndSlaveOkIsFalse ])
		ifTrue: [ self smallWait ]."

	^ self retryOrResignal: aMongoLastError.