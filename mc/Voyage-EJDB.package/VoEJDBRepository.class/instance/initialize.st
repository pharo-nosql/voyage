initialization
initialize

	super initialize.
	collections := SmallDictionary new.
	cacheByCollection := SmallDictionary new.
	versionGenerator := self class defaultVersionGenerator.
	synonymTable := IdentityDictionary new