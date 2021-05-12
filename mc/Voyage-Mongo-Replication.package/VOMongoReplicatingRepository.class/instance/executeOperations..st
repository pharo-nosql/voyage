persistence
executeOperations: anOperationCollection 
	"replication utilizes that all actions are compiled into a collection 
	of database operations"
	anOperationCollection execute.
	"we override the executed operations repository and execute again. This 
	also indicates that it might be better that operations are given the 
	repository on execution"
	(anOperationCollection instVarNamed: #operations) do: [ :each | 
		each repository: replicationRepository ].
	anOperationCollection execute