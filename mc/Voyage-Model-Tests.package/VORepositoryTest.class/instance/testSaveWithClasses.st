tests
testSaveWithClasses
	self repository save: (VOTestPilot new currency: VOTestEuro).
	self waitForWriteOperation.
	
	self 
		assert: (self repository selectOne: VOTestPilot where: [:each | true ]) currency 
		equals: VOTestEuro.
	