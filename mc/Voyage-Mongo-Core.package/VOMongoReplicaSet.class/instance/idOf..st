accessing
idOf: anObject
	^self readingRepositoryDo: [ :repository | repository idOf: anObject]