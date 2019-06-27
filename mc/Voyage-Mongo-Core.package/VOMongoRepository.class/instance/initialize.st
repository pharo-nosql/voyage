initialization
initialize 
	super initialize.
	self wireProtocolEnabled: true.
	self ensuringCurrentOnSave: false.
	self ensuringCurrentReferencesOnQueries: false.
	self lazySynchronize: true.
	
	self resetPool.