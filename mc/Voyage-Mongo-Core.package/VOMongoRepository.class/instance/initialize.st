initialization
initialize 
	super initialize.
	self forceEager: false.
	self initializeCache.
	self initializeResolver.
	self versionGenerator: [ UUIDGenerator new makeSeed ].