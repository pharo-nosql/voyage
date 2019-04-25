initialization
initialize
	super initialize.
	sessions := SharedQueue new.
	connectionTimeoutSeconds := Socket standardTimeout.
	self populate