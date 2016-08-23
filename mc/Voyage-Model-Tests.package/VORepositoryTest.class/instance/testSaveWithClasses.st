tests
testSaveWithClasses
	self repository save: (VOTestPilot new currency: VOTestEuro).
	self assert: (self repository selectAll: VOTestPilot) first currency equals: VOTestEuro.
	