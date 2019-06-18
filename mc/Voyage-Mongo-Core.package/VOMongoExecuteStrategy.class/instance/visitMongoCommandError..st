private - visiting
visitMongoCommandError: aMongoCommandError

	(aMongoCommandError isNotMaster or: [ aMongoCommandError isNotMasterAndSlaveOkIsFalse ])
		ifTrue: [ repository reset ]
		ifFalse: [ repository resetPool ].

	^ self retryOrResignal: aMongoCommandError