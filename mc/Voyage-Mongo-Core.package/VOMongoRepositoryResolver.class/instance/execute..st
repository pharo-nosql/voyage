private replication
execute: aBlockClosure

	self debugLog: primaryMongoUrl asString, '->execute ', aBlockClosure asString.

	^ self errorHandlerClass new
		resolver: self;
		blockClosure: aBlockClosure;
		execute