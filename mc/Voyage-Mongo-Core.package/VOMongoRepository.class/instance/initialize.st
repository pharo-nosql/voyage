initialization
initialize 
	super initialize.
	self versionGenerator: VOMongoVersionGenerator new.
	self initializeCache.
	self initializeResolver.
