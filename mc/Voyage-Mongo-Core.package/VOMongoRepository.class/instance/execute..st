private
execute: aBlockClosure

	self debugLog: 'execute: ', aBlockClosure asString.

	^ VOMongoExecuteStrategy new
		repository: self;
		blockClosure: aBlockClosure;
		retriesLeft: self executeRetryCount;
		execute