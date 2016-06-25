private
handleMongoLastError: aMongoLastError

	(aMongoLastError isNotMaster or: [ aMongoLastError isNotPrimary ]) 
		ifTrue: [ resolver reset ]
		ifFalse: [ resolver resetPrimaryPool ].

	^ self retryOrResignal: aMongoLastError.