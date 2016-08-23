tests
testCount
	| pilot |
	pilot := VOTestPilot new name: 'Esteban'.
	self assert: (self repository count: VOTestPilot) equals: 0.
	self repository save: pilot.
	self assert: (self repository count: VOTestPilot) equals: 1
	