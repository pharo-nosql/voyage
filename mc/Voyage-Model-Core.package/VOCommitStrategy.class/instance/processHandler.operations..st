processing
processHandler: each operations: anOperationCollection
	[ each handleOperations: anOperationCollection ]
		on: Error 
		do: [ :err | "ignore" ]