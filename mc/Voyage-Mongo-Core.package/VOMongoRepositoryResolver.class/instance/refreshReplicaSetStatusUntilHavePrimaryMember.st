private replication
refreshReplicaSetStatusUntilHavePrimaryMember
	
	[ true ] whileTrue: [ 
		| replicaSetStatus |
		self debugLog: 'get replica set status'.

		"Override with fresh status"
		replicaSetStatus := self withAvailableAdminMongo: [ :mongo | mongo replicaSetStatus ].

		"Get current primary member"	
		replicaSetStatus members 
			detect: #isPrimary
			ifFound: [ :aMember |
				"Success"
				primaryMember := (aMember host, ':', aMember port asString) asMongoUrl.
				replicaSetMembers := (replicaSetStatus members
					collect: [ :each | (each host, ':', each port asString) asMongoUrl ]) asArray.
				self refreshAdminMongos.
				^ self ].
		
		"Wait election."
		self debugLog: 'no primary replica set (wait)'.
		self flag: #todo. "Infinite loop? how much wait?"
		3 seconds wait. ].
