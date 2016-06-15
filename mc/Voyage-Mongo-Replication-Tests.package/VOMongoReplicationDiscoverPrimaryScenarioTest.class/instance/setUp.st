running
setUp
	super setUp.

	"Note that localhost:27032 is a secondary member, then the repository must figure out and discover the primary member in the replica set."
	repository := VOMongoRepository
		host: 'localhost'
		port: 27032
		database: 'Voyage-Tests'.