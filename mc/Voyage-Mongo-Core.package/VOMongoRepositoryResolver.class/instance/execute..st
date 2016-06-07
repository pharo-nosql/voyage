private replication
execute: aBlockClosure

	^ self errorHandlerClass new
		resolver: self;
		blockClosure: aBlockClosure;
		execute