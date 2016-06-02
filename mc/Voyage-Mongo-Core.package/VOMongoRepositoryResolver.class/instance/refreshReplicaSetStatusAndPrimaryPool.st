private replication
refreshReplicaSetStatusAndPrimaryPool
	
	"Override with fresh status"
	replicaSetStatus := self freshReplicaStatus.

	"Get current primary member"	
	primaryMember := 
		replicaSetStatus members 
			detect: #isPrimary
			ifNone: [ 
				"Wait election."
				self logRecoveringFrom: 'no primary replica set (wait)'.
				3 seconds wait. 
				
				self flag: #todo. "Infinite recursion if there is no primary"
				^ self refreshReplicaSetStatusAndPrimaryPool ].
	
	"Reconfigure our pool to use new primary member"
	primaryPool 
		flush;
		setHost: primaryMember host 
		port: primaryMember port 
		database: repository databaseName
		username: repository username 
		password: repository password.
	
	1 flag: #todo. "fix"
	primaryMember := { primaryMember host. primaryMember port }