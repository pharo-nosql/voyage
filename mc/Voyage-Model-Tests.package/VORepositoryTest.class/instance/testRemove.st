tests
testRemove
	| pilot pilots |

	pilot := VOTestPilot new
		name: 'Esteban';
		pet: (VOTestDog new name: 'Doggie').
	self repository save: pilot.
	self waitForWriteOperation.

	pilots := self repository selectAll: VOTestPilot.
	self assert: pilots size equals: 1.
	self assert: pilots anyOne name equals: 'Esteban'.
	
	self repository remove: pilot.
	self waitForWriteOperation.

	pilots := self repository selectAll: VOTestPilot.
	self assert: pilots size equals: 0.