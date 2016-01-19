initialization
initialize
	super initialize.
	sessions := SharedQueue new.
	self populate