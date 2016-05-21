private replication
readingResolverDo: aBlock
	self flag: #todo. "Use a Read Preference strategy, which can allow reading from secondary nodes, etc."
	^self writingResolverDo: aBlock