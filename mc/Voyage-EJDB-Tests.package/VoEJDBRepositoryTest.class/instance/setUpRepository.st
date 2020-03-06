running
setUpRepository
	"Hook: subclasses can override with special ways of building the test repository"

	repository := VoEJDBRepository onTruncate: FileLocator imageDirectory / 'test-ejdb.db'.
	repository debug: true