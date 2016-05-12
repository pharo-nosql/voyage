testing
isNew: anObject
	^self readingRepositoryDo: [ :repository | repository isNew: anObject]