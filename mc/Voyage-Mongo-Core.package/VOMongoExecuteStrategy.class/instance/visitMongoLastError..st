private - visiting
visitMongoLastError: aMongoLastError

	(aMongoLastError isNotMaster or: [ aMongoLastError isNotPrimary ]) 
		ifTrue: [ resolver reset ]
		ifFalse: [ resolver resetPool ].

	^ self retryOrResignal: aMongoLastError.