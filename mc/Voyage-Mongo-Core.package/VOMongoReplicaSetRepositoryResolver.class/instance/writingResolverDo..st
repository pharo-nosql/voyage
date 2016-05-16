private replication
writingResolverDo: aBlock
	self
		execute: [ ^ aBlock value: self writingResolver ]
		recoverWith: [ 
			self invalidateWritingResolver.
			self reset ]
		retries: self class retries