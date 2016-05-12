persistence
count: aClass where: aDictionary
	^self readingRepositoryDo: [ :repository | repository count: aClass where: aDictionary]