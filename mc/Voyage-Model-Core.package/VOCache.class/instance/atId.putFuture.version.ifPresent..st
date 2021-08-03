accessing
atId: anOID putFuture: aFutureValue version: aVersion ifPresent: aBlock
	self compactIfNeeded.
	self mutex critical: [ 
		objects at: anOID ifPresent: [ :value |
			^ aBlock cull: value ].
		objects at: anOID put: aFutureValue.
		reversedObjects at: aFutureValue basicValue put: anOID.
		versions at: anOID put: aVersion].