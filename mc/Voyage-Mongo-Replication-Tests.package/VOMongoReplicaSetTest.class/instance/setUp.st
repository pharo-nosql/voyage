running
setUp
	"Follow my class comment to set up the expected test mongo replica set."

	super setUp.

	repository := VOMongoRepository
		host: 'localhost'
		port: 27031
		database: 'Voyage-Tests'.