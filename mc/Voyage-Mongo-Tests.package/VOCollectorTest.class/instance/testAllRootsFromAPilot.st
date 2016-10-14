tests
testAllRootsFromAPilot
	"Test that VOMongoShadowDescription is not collected"

	| pilot results |	
	pilot := VOTestPilot new.
	pilot keywords add: 'Smalltalk'.
	pilot keywords add: 'Seaside'.

	results := VOCollector allRootsFrom: pilot in: repository.
	
	self assert: results asBag equals: {pilot} asBag.