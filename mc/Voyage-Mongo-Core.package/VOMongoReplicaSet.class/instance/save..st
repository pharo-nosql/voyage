persistence
save: anObject
	^self writingRepositoryDo: [ :repository | repository save: anObject ]