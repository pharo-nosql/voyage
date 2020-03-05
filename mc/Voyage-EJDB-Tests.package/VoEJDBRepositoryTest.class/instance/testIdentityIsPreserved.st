tests
testIdentityIsPreserved
	| first second |
	
	self repository save: (VOTestPilot new name: 'Esteban').
		
	self repository flushCache.
	self waitForWriteOperation.

	first := (self repository selectAll: VOTestPilot) anyOne.
	second := self repository selectOne: VOTestPilot where: [ :each | each name = 'Esteban' ].
	
	self assert: first identicalTo: second