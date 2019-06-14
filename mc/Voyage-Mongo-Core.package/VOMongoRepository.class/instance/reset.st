accessing
reset
	resolver reset.
	self resetPool.
	self mongoUrlResolver reset.
	self flush.