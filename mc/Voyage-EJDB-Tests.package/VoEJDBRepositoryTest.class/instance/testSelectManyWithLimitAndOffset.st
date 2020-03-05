tests
testSelectManyWithLimitAndOffset
	| firstBatch secondBatch thirdBatch |
	self repository
		save: (VOTestPilot new name: 'Esteban');
		save: (VOTestPilot new name: 'Mariano');
		save: (VOTestPilot new name: 'Stef');
		save: (VOTestPilot new name: 'Camillo');
		save: (VOTestPilot new name: 'Igor');
		save: (VOTestPilot new name: 'Markus');
		yourself.
	self repository flushCache.
	self waitForWriteOperation.

	"Esteban, Mariano" 
	firstBatch := self repository selectMany: VOTestPilot where: nil limit: 2. 
	"Stef, Camillo"
	secondBatch := self repository selectMany: VOTestPilot where: nil limit: 2 offset: 2.
	"Mariano, Stef"
	thirdBatch := self repository selectMany: VOTestPilot where: nil limit: 2 offset: 1.
	self assert: firstBatch size equals: 2.
	self assert: secondBatch size equals: 2.
	self assert: (firstBatch intersection: secondBatch) isEmpty.
	self assert: (firstBatch intersection: thirdBatch) size equals: 1.
	self assert: firstBatch second identicalTo: thirdBatch first