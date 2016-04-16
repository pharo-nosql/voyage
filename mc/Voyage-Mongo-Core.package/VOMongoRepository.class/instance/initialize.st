initialization
initialize 
	super initialize.
	self forceEager: false.
	self versionGenerator: VOMongoVersionGenerator new.
	self initializeCache.
	self initializeResolver.
