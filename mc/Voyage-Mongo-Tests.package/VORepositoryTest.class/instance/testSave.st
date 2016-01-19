tests
testSave
	| pilot pilots |
	pilot := VOTestPilot new
		name: 'Esteban';
		pet: (VOTestDog new name: 'Doggie').
	self repository save: pilot.
	
	pilots := self repository selectAll: VOTestPilot.
	self assert: pilots size equals: 1.
	self assert: pilots first name equals: 'Esteban'.
	