private - visiting
visitMongoCommandError: aMongoCommandError

	(aMongoCommandError isNotMaster or: [ aMongoCommandError isNotMasterAndSlaveOkIsFalse ])
		ifTrue: [ resolver reset ]
		ifFalse: [ resolver resetPrimaryPool ].

	^ self retryOrResignal: aMongoCommandError