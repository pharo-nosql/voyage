initialization
initialize
	super initialize.
	ongoingTransaction := false.
	collections := Dictionary new.
	cacheByCollection := Dictionary new.
	versionGenerator := self class defaultVersionGenerator
	