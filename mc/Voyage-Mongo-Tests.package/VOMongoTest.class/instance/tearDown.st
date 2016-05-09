running
tearDown
	"Reset the DB after each test"
	"self repository dropDatabase --> this works but it's slow and... leaks open Sockets!"

	self repository
		removeAll: VOTestPet;
		removeAll: VOTestPilot;
		flush;
		reset.
		
	Smalltalk garbageCollect.

	1 second asDelay wait. "Wait to reduce the probability of a concurrency conflict"