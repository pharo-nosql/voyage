private - visiting
visitMongoCommandError: aMongoCommandError

"	(aMongoCommandError isNotMaster or: [ aMongoCommandError isNotMasterAndSlaveOkIsFalse ])
		ifTrue: [ self smallWait? ]."

	^ self retryOrResignal: aMongoCommandError