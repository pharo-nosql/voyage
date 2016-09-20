running
setUpRepository
	"Hook: subclasses can override with special ways of building the test repository"

	repository := VOMongoRepository 
		host: self class mongoHost
		database: 'Voyage-Tests'.
	repository debug: true.