accessing
reset
	self resetPool.
	self mongoUrlResolver reset.
	self flush.