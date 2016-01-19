persistence
selectAll: aClass sortBy: sortBlock
	^sortBlock
		ifNotNil: [ (self listOf: aClass) sortBy: sortBlock ] 
		ifNil: [ self listOf: aClass ]