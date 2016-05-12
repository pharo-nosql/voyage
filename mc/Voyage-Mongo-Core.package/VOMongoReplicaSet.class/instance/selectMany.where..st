persistence
selectMany: aClass where: aBlock
	^self readingRepositoryDo: [ :repository | repository selectMany: aClass where: aBlock]