tests
testVersionAt
	| pilot id aVersion anotherVersion |
	
	pilot := VOTestPilot new name: 'Esteban'.
	self repository save: pilot.
	
	id := self repository idOf: pilot.
	aVersion := (self repository cacheFor: VOTestPilot) versionAt: id.
	
	pilot name: 'Another Pilot'.
	self repository save: pilot.

	anotherVersion := (self repository cacheFor: VOTestPilot) versionAt: id.
	
	self deny: aVersion equals: anotherVersion