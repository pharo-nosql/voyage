running
tearDown
	"Reset the DB after each test"
	"self repository dropDatabase --> this works but it's slow and... leaks open Sockets!"

	self repository
		removeAll: VOTestOwner;
		removeAll: VOTestPet;
		removeAll: VOTestPilot;
		flush.
	Smalltalk garbageCollect.

	800 milliseconds asDelay wait. "Wait to reduce the probability of a concurrency conflict"