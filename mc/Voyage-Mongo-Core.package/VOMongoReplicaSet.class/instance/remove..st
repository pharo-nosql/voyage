persistence
remove: anObject
	^self writingRepositoryDo: [ :repository | repository remove: anObject]