private - visiting
visitMongoQueryError: aMongoQueryError

	^ aMongoQueryError isNotMasterAndSlaveOkIsFalse
		ifTrue: [
			repository reset.
			self retryOrResignal: aMongoQueryError ]
		ifFalse: [ "Unrecoverable error"
			VOMongoError signal: aMongoQueryError errorMessage ]