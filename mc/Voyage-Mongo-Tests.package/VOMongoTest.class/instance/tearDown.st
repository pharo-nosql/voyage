running
tearDown
	"Reset the DB after each test"
	"self repository dropDatabase --> this works but it's slow and... leaks open Sockets!"

	self repository
		removeAll: VOTestOwner;
		removeAll: VOTestPet;
		removeAll: VOTestPilot;
		removeAll: VOTestOwner;
		flush;
		reset.
		
	Smalltalk garbageCollect.

	self waitForWriteOperation.
