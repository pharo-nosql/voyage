private replication
refreshReplicaSetStatusUntilHavePrimaryMember
	
	[ true ] whileTrue: [ 
		self debugLog: 'get replica set status'.

		"Override with fresh status"
		replicaSetStatus := self freshReplicaStatus.

		"Get current primary member"	
		primaryMember := 
			replicaSetStatus members 
				detect: #isPrimary
				ifFound: [ :aMember |
					primaryMember := { aMember host. aMember port }. ^ self ].
		
		"Wait election."
		self debugLog: 'no primary replica set (wait)'.
		self flag: #todo. "Infinite loop? how much wait?"
		3 seconds wait. ].
