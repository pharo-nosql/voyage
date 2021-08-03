accessing
atId: anOID resolveFutureWith: anObject
	| future |
	self compactIfNeeded.
	self mutex critical: [ 
		future := objects at: anOID ifAbsent: [
			Error signal: 'future is missing' ].
		objects at: anOID put: anObject.].
	future resolved
