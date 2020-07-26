private - visiting
visitMongoQueryError: aMongoQueryError

"	(aMongoQueryError isNotMaster or: [ aMongoQueryError isNotMasterAndSlaveOkIsFalse ])
		ifTrue: [ self smallWait? ]."

	^ self retryOrResignal: aMongoQueryError