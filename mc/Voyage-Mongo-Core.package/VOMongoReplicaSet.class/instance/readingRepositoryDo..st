private
readingRepositoryDo: aBlockClosure
	self flag: #todo. "Use a Read Preference strategy, which can allow reading from secondary nodes, etc."
	^self writingRepositoryDo: aBlockClosure