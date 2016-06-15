tests
testInitialMongoOffline
	"The repository shouldn't error at creation time but only on an operation that couldn't complete."
	
	self 
		shouldnt: [ 
			repository := VOMongoReplicationTestResources new newRepositoryOnOffline.
			5 seconds wait ]
		raise: Error.
	
	self should: [ repository save: VOTestCat new ] raise: VOMongoConnectionError.
