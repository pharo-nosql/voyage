tests
testIsNew
	| pilot |
	pilot := VOTestPilot new
		name: 'Esteban';
		pet: (VOTestDog new name: 'Doggie').
 	self assert: (self repository isNew: pilot).
	self assert: (self repository isNew: pilot pet).
	
	self repository save: pilot.
	
	self deny: (self repository isNew: pilot).
	self deny: (self repository isNew: pilot pet).