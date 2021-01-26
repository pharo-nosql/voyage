tests
testCreateWithMongoUrls
	"The repository can be created with a list of initial mongodb's urls."

	| arrayOfMongoUrls |
	arrayOfMongoUrls := MongoBasicReplicationTestResources allMongoUrls.

	repository := VOMongoRepository 
		mongoUrls: arrayOfMongoUrls
		database: 'Voyage-Tests'.
	
	"read operation"
	repository selectAll: VOTestCat.