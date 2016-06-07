accessing
reset
	self refreshPrimaryMongoUrl.
	self refreshAdminMongos.
	self resetPrimaryPool.