private
execute: aBlockClosure

	self debugLog: 'execute: ', aBlockClosure asString.

	^ VOMongoExecuteStrategy new
		resolver: self;
		blockClosure: aBlockClosure;
		retriesLeft: repository executeRetryCount;
		execute