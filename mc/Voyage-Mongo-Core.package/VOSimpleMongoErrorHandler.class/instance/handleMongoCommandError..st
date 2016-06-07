private
handleMongoCommandError: error

	(error isNotMaster or: [ error isNotMasterAndSlaveOkIsFalse ])
		ifTrue: [ resolver reset ]
		ifFalse: [ resolver resetPrimaryPool ].

	^ self retryOrResignal: error