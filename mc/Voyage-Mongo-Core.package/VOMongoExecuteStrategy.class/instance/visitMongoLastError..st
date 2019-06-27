private - visiting
visitMongoLastError: aMongoLastError

	(aMongoLastError isNotMaster or: [ aMongoLastError isNotPrimary ]) 
		ifTrue: [ repository reset ]
		ifFalse: [ repository resetPool ].

	^ self retryOrResignal: aMongoLastError.