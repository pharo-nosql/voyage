persistence
selectAll: aClass
	^self readingRepositoryDo: [ :repository | repository selectAll: aClass]