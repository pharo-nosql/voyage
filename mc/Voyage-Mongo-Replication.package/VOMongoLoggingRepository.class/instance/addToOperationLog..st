as yet unclassified
addToOperationLog: aVOOperation 
	| entry |
	entry := aVOOperation asOperationLog 
		at: 'id' put: self nextSequenceNumber;
		yourself.
	loggingRepository 
		databaseWritingDo: [ :mongo | 
			mongo
				command: { 
					'insert' -> self loggingCollectionName.
					'documents' -> { entry } } asDictionary  ]