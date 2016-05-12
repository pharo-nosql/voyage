persistence
commit: aBlock
	^self writingRepositoryDo: [ :repository | repository commit: aBlock]