as yet unclassified
addToOperationLog: aVOOperation 
	| entry |
	entry := aVOOperation asOperationLog 
		at: 'sequenceNumber' put: self nextSequenceNumber;
		yourself.
	loggingRepository 
		databaseWritingDo: [ :mongo | 
			mongo
				command: { 
					'insert' -> self loggingCollectionName.
					'documents' -> { entry } } asDictionary  ]