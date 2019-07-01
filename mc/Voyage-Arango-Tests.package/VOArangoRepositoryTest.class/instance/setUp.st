running
setUp 
	repository := VOArangoRepository uri: 'http://localhost:8529'.
	PQQueryBuilder generatorClass: PQArangoQueryGenerator.