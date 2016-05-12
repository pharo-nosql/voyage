persistence
selectAll: aClass sortBy: aObject 
	^self readingRepositoryDo: [ :repository | repository selectAll: aClass sortBy: aObject]