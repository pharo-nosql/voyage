tests
test001CreateWithList
	"The repository can be created with a list of initial mongodb's urls."

	repository := VOMongoRepository 
		mongoUrls: #('localhost:27031' 'localhost:27032' 'localhost:27033')
		database: 'rs-test'.
	
	"read operation"
	repository selectAll: VOTestCat.