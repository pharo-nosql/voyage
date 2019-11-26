tests
testSelectManyWithLimitAndOffset
	| firstBatch secondBatch thirdBatch |
	
	self repository
		save: (VOTestPilot new name: 'Esteban');
		save: (VOTestPilot new name: 'Mariano');
		save: (VOTestPilot new name: 'Stef');
		save: (VOTestPilot new name: 'Camillo');
		save: (VOTestPilot new name: 'Igor');
		save: (VOTestPilot new name: 'Marcus');
		yourself.
	self repository flushCache.
	
	firstBatch := self repository selectMany: VOTestPilot where: [ :each | true ] limit: 2. 
	secondBatch := self repository selectMany: VOTestPilot where: [ :each | true ] limit: 2 offset: 2.
	thirdBatch := self repository selectMany: VOTestPilot where: [ :each | true ] limit: 2 offset: 1.
	self assert: firstBatch size equals: 2.
	self assert: secondBatch size equals: 2.
	self assert: (firstBatch intersection: secondBatch) isEmpty.
	self assert: (firstBatch intersection: thirdBatch) size equals: 1.