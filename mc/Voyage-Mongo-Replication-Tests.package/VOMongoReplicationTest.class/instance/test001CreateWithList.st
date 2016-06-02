tests
test001CreateWithList

	repository := VOMongoRepository 
		database: 'rs-test' 
		members: #((localhost 27031) (localhost 27032) (localhost 27033)).
	
	"read operation"
	repository selectAll: VOTestCat.