private - visiting
visitMongoCommandError: aMongoCommandError

	aMongoCommandError isInsertionError
		ifTrue: [ ^ VOMongoInsertError new
							code: aMongoCommandError code;
							signal: aMongoCommandError errmsg ].

	(aMongoCommandError isNotMaster or: [ aMongoCommandError isNotMasterAndSlaveOkIsFalse ])
		ifTrue: [ resolver reset ]
		ifFalse: [ resolver resetPool ].

	^ self retryOrResignal: aMongoCommandError