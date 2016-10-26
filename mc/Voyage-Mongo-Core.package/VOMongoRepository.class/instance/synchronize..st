persistence
synchronize: anObject

	| objectClass id json |
	anObject isTypePersistent ifFalse: [ ^anObject ].

	objectClass := anObject class.
	id := self keyOf: anObject.
	json := resolver
		basicRawSelectOne: objectClass 
		where: (Dictionary with: VOMongoJSONSerializer fieldRootId -> id).

	^resolver retrieveInstanceOf: objectClass json: json lazy: self isLazySynchronize