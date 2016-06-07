private replication
errorHandlerClass
	^ errorHandlerClass ifNil: [
		errorHandlerClass := VOSimpleMongoErrorHandler ]