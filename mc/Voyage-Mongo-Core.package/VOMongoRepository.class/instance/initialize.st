initialization
initialize 
	super initialize.
	self forceEager: false.
	self wireProtocolEnabled: true.
	self ensuringCurrentOnSave: false.
	self versionGenerator: VOSeedVersionGenerator new.

	self initializeCache.
	self initializeResolver.