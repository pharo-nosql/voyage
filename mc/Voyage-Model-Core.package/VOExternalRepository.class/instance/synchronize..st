persistence
synchronize: anObject

	| objectClass id json |
	anObject isTypePersistent ifFalse: [ ^anObject ].

	objectClass := anObject class.
	id := self keyOf: anObject.
	json := self readOneOperation 
		basicSelectOne: objectClass  where: (Dictionary with: self fieldRootId -> id).

	^ self retrieveInstanceOf: objectClass serialized: json lazy: self isLazySynchronize