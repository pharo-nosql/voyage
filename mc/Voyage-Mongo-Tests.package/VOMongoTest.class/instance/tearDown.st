running
tearDown
	"Reset the DB after each test
	self repository dropDatabase"
	self repository 
		removeAll: VOTestPet;
		removeAll: VOTestPilot.