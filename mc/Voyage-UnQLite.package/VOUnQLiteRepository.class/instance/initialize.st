initialization
initialize
	super initialize.
	collections := Dictionary new.
	cacheByCollection := Dictionary new.
	versionGenerator := self class defaultVersionGenerator
	