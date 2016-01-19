running
tearDown
	"Reset the DB after each test
	self repository dropDatabase"
	self repository 
		removeAll: VOTestPet;
		removeAll: VOTestPilot.
	"Add delay time so we are sure DB perform operations"
	(Delay forMilliseconds: 50) wait.