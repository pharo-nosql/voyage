accessing
atId: anOID putFuture: aFutureValue version: aVersion 
	self compactIfNeeded.
	self mutex critical: [ 
		objects at: anOID ifPresent: [:value | 
			Error signal: 'there shouldnt be a value for ', anOID asString ].
		objects at: anOID put: aFutureValue.
		reversedObjects at: aFutureValue put: anOID.
		versions at: anOID put: aVersion].