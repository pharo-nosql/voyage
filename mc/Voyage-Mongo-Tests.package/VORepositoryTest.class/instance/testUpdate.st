tests
testUpdate
	| pilot pilots id |
	
	pilot := VOTestPilot new
		name: 'Esteban';
		pet: (VOTestDog new name: 'Doggie').
	self repository save: pilot.
	
	id := self repository idOf: pilot.
	
	pilot name: 'Another Pilot'.
	self repository save: pilot.
	
	pilots := self repository selectAll: VOTestPilot.
	self assert: pilots size equals: 1.
	self assert: pilots first equals: pilot.
	self assert: (self repository idOf: pilot) equals: id.