initialization
initialize 
	super initialize.
	self forceEager: false.
	self versionGenerator: VOSeedVersionGenerator new.
	self initializeCache.
	self initializeResolver.
