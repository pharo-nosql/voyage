tests
testVersionAtWithCustomVersionGenerator
	| pilot id aNumber |

	aNumber := 6.
	self repository 	versionGenerator: [ aNumber := aNumber + 1 ].
		
	pilot := VOTestPilot new name: 'Esteban'.
	self repository save: pilot.
	
	id := self repository idOf: pilot.
	self assert: (self repository versionAt: id) equals: 7.
	
	pilot name: 'Another Pilot'.
	self repository save: pilot.

	self assert: (self repository versionAt: id) equals: 8.