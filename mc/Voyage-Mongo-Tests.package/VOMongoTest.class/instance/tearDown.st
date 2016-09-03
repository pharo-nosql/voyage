running
tearDown
	"Reset the DB after each test"
	"self repository dropDatabase"

	self repository
		removeAll: VOTestOwner;
		removeAll: VOTestPet;
		removeAll: VOTestPilot;
		removeAll: VOTestOwner;
		flush;
		reset.
		
	Smalltalk garbageCollect.

	self waitForWriteOperation.
