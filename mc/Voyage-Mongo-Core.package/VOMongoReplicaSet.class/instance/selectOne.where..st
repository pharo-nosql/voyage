persistence
selectOne: aClass where: aBlock
	^self readingRepositoryDo: [ :repository | repository selectOne: aClass where: aBlock]