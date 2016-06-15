private replication
execute: aBlockClosure

	self debugLog: primaryMongoUrl asString, '->execute ', aBlockClosure asString.

	^ repository executeStrategyClass new
		resolver: self;
		blockClosure: aBlockClosure;
		execute