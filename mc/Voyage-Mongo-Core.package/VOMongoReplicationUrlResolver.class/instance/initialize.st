initialization
initialize
	super initialize.
	
	mutex := Semaphore forMutualExclusion.
		
	"Initially all known mongo urls are the ones configured in repository"
	knownMongoUrls := repository mongoUrls.
