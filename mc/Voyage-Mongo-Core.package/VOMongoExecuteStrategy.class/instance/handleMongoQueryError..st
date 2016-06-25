private
handleMongoQueryError: aMongoQueryError

	^ aMongoQueryError isNotMasterAndSlaveOkIsFalse
		ifTrue: [
			resolver reset.
			self retryOrResignal: aMongoQueryError ]
		ifFalse: [ "Unrecoverable error"
			VOMongoError signal: aMongoQueryError errorMessage ].

