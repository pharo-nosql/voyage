initialization
initialize 
	super initialize.
	self forceEager: false.
	self wireProtocolEnabled: true.
	self ensuringCurrentOnSave: false.
	self ensuringCurrentReferencesOnQueries: false.
	self lazySynchronize: true.
	self versionGenerator: VOSeedVersionGenerator new.

	self initializeCache.
	self initializeResolver.