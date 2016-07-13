private
handleMongoQueryError: aMongoQueryError
	"Unrecoverable error"
	
	^ VOMongoError signal: aMongoQueryError errorMessage
