accessing
versionAt: anId
	^self readingRepositoryDo: [ :repository | repository versionAt: anId]