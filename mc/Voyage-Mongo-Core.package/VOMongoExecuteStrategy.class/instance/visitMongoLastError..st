private - visiting
visitMongoLastError: aMongoLastError

	aMongoLastError isInsertionError
		ifTrue: [ ^ VOMongoInsertError new
							code: aMongoLastError code;
							signal: aMongoLastError errorMessage ].

	(aMongoLastError isNotMaster or: [ aMongoLastError isNotPrimary ]) 
		ifTrue: [ resolver reset ]
		ifFalse: [ resolver resetPool ].

	^ self retryOrResignal: aMongoLastError.