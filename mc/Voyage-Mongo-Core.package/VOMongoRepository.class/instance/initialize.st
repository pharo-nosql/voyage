initialization
initialize 
	super initialize.
	self forceEager: false.
	self useWireProtocolToWrite: true.
	self updateIfCurrent: false.
	self versionGenerator: VOSeedVersionGenerator new.

	self initializeCache.
	self initializeResolver.