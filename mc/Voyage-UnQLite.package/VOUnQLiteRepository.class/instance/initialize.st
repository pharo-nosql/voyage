initialization
initialize
	super initialize.
	collections := Dictionary new.
	cache := VOMongoCache new.
	