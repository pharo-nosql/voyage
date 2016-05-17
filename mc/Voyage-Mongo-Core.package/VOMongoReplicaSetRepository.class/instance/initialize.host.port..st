initialization
initialize: aVOMongoRepository host: aHost port: aPort
	self initialize.
	referenceRepository := aVOMongoRepository.
	host := aHost.
	port := aPort.
	self initializeResolver.