private replication
refreshReplicaSetStatusAndPrimaryMember
	
	[self refreshReplicaSetStatusUntilHavePrimaryMember]
		on: MongoCommandError 
		do: [:error |
			self debugLog: error.
			error isNotRunningWithReplSet 
				ifTrue: [ primaryMember := repository members first ] "TODO: create strategy?"
				ifFalse: [ error signal ]].
	
	self debugLog: primaryMember asString, '->new primary'.
