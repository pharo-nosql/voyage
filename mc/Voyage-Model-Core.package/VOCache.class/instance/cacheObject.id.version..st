accessing
cacheObject: anObject id: anOID version: aVersion 
	| future |
	self compactIfNeeded.
	self mutex critical: [ 
		objects at: anOID ifPresent: [:value | 
			value isTypeFuture 
				ifTrue: [ future := value ] ].
		objects at: anOID put: anObject.
		reversedObjects at: anObject put: anOID.
		versions at: anOID put: aVersion].
	future ifNotNil: [ future resolve ]
