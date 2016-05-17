instance creation
referenceRepository: aVOMongoRepository host: aHost port: aPort
	^self basicNew
		initialize: aVOMongoRepository 
			host: aHost 
			port: aPort;
		yourself