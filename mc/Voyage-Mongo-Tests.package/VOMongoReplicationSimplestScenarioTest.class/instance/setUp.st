running
setUp
	super setUp.

	"Simplest scenario: Specify primary member in the replica set."
	repository := VOMongoRepository
		host: 'localhost'
		port: 27031
		database: 'Voyage-Tests'.