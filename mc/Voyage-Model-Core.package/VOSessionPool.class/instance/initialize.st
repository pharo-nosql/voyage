initialization
initialize
	super initialize.
	sessions := SharedQueue new.
	connectionTimeout := Socket standardTimeout seconds.
	self populate