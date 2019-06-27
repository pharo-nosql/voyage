tests
testAllRootsFromAPilot
	"Test that VOMongoShadowDescription is not collected"

	| pilot results |	
	pilot := VOTestPilot new.
	pilot keywords add: 'Smalltalk'.
	pilot keywords add: 'Seaside'.

	results := repository allRootsFrom: pilot.
	
	self assert: results asBag equals: {pilot} asBag.