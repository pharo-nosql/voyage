persistence
count: aClass
	^self readingRepositoryDo: [ :repository | repository count: aClass]