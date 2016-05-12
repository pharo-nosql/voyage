persistence
removeAll: aClass
	^self writingRepositoryDo: [ :repository | repository removeAll: aClass]