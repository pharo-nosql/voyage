initialization
initialize
	super initialize.
	
	"Initially all known mongo urls are the ones configured in repository"
	allMongoUrls := repository mongoUrls.
