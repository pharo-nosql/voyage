persistence
executeOperations: anOperationCollection 
	"replication utilizes that all actions are compiled into a collection 
	of database operations"
	anOperationCollection execute.
	(anOperationCollection instVarNamed: #operations) do: [ :each | 
		self addToOperationLog: each ].
	