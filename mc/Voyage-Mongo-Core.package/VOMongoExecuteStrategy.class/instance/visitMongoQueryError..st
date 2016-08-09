private - visiting
visitMongoQueryError: aMongoQueryError
	"Unrecoverable error"
	
	^ VOMongoError signal: aMongoQueryError errorMessage
